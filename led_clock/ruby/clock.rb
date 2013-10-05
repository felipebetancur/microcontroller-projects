#!/usr/bin/env ruby

require 'optparse'
require 'rubygems'
require 'serialport'
require 'time'

options = {}
optparse = OptionParser.new do |opts|
  opts.on('-h', '--help', 'Display this message') do
    puts opts
    exit
  end
  opts.on('-p', '--port PORT', 'The serial port') do |p|
    puts p
    options[:port] = p;
  end
  opts.on('-s', '--set [TIME]', 'Sets the current date/time') do |t|
    if (t.nil?) then
      options[:time] = Time.now;
    else
      options[:time] = Time.parse t;
    end
    options[:action] = :set
  end
  opts.on('-c', '--check', 'Gets the date/time and displays the drift') do
    options[:action] = :check
  end
  opts.on('-t', '--tune [ADJUST]', Integer, 'Tune the timer by adding to the compare value') do |v|
    options[:action] = v.nil? ? :get_tune : :set_tune
    options[:adjustment] = v
  end
  
  opts.parse!
  
  if options[:port].nil? then
    puts 'port is required'
    puts opts
    exit
  end
  if options[:action].nil? then
    puts 'an action is required'
    puts opts
    exit
  end
  
  SerialPort.open(options[:port], 9600, 8, 1, SerialPort::NONE) do |sp|
    if options[:action] == :check
      sp.write 'G'
      millis = sp.read(4).unpack('L')[0]; # convert 4 byte string into a uint32_t
      puts Time.new millis
      puts Time.now.to_i - millis
    elsif options[:action] == :set
      t = Time.now
      sec = t.hour * 60 * 60 + t.min * 60 + t.sec
      sp.write 'S'
      sec = options[:time].to_i + options[:time].gmt_offset
      sp.write [sec].pack('L')
      puts sec
    elsif options[:action] == :set_tune
      sp.write 'T'
      sp.write [options[:adjustment]].pack('c')
    elsif options[:action] == :get_tune
      sp.write 'C'
      comp = sp.read(1).unpack('c')
      puts comp
    end
  end
end

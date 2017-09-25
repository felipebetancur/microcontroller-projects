#ifndef WEB_SERVER_H
#define WEB_SERVER_H

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#include <Stream.h>
#include "ESP8266.h"

namespace digitalcave {
	enum conn_state { unsent, headers, body, sent };

	struct conn_t {
		// request fields
		char method[7];
		char path[256];		// this is the storage for both path and query
		char* query = NULL;
		uint16_t req_length = 0;
		// response fields
		uint16_t resp_status = 200;
		char* resp_type = NULL;
		char* resp_encoding = NULL;
		uint16_t resp_length = 0;
	};

	/* In order to use this class, make the following calls:
	 * request_t request = server->accept();
	 * // fully read the request body
	 * server->status(200);
	 * // fully write the response body
	 * server->flushAndClose();
	 */
	class WebServer : public Stream {

		private:
			ESP8266* wifi;
			ArrayStream buffer;
			conn_state state = unsent;
			uint16_t available; // remaining bytes to read according to Content-Length

			/* Adds a header to the response */
			void send_header(char* key, char* value);

		public:
			/* Consume the entire ESP8266 module for the task of being a webserver. */
			WebServer(ESP8266* wifi, uint16_t buffer_size);
			~WebServer();

			/* Reads an incoming request */
			conn_t accept();
			/* Sends a response to the client */
			uint8_t send_resp(conn_t* conn);

			uint8_t read(uint8_t* b);
			uint16_t read(uint8_t* a, uint16_t len);
			uint8_t write(uint8_t b);
			uint8_t flush();
			uint8_t close();

			using Stream::reset;
			using Stream::write;
	};
}

#endif
from http.server import BaseHTTPRequestHandler, HTTPServer

# Define the HTTP request handler class
class SimpleHTTPRequestHandler(BaseHTTPRequestHandler):
    # Handle GET requests
    def do_GET(self):
        # Set response status code
        self.send_response(200)
        
        # Set headers
        self.send_header('Content-type', 'text/html')
        self.end_headers()
        
        # Write response body
        self.wfile.write(b"<html><body><h1>Hello, World!</h1></body></html>")

# Define the main function to run the server
def run():
    # Set server address and port
    server_address = ('', 8000)
    
    # Create an HTTP server with the defined request handler class
    httpd = HTTPServer(server_address, SimpleHTTPRequestHandler)
    
    # Print a message indicating the server has started
    print('Starting server...')
    
    # Run the server until stopped
    try:
        httpd.serve_forever()
    except KeyboardInterrupt:
        # If the user interrupts (Ctrl+C), stop the server
        print('Server stopped.')
        httpd.server_close()

# Run the main function to start the server
if __name__ == '__main__':
    run()

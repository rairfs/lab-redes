#!/bin/bash

# Check if the user provided a URL argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

# Extract the URL from the command line argument
url=$1

# Make a GET request to the specified URL using curl
curl -s -o response.txt -D headers.txt "$url"

# Check if the request was successful (status code 200)
if [ $? -eq 0 ]; then
    # Print the response headers
    echo "Response Headers:"
    cat headers.txt
    echo
    
    # Print the response body
    echo "Response Body:"
    cat response.txt
else
    # Print an error message if the request was not successful
    echo "Error: Failed to retrieve the URL $url"
fi

# Clean up temporary files
rm -f response.txt headers.txt

# Web Server

This project covers the basics of web servers, nginx and DNS. All scripts are written in Bash and run on Ubuntu 16.04.

## Files

| File | Description |
|------|-------------|
| `0-transfer_file` | Transfers a file to a server using `scp` |
| `1-install_nginx_web_server` | Installs nginx and serves a page containing "Holberton School" on port 80 |
| `2-setup_a_domain_name` | Contains the .tech domain name pointing to web-01 |
| `3-redirection` | Configures nginx with a 301 redirect on `/redirect_me` |
| `4-not_found_page_404` | Configures nginx with a custom 404 page |
| `5-design_a_beautiful_404_page.html` | A custom styled 404 page |

## Usage

Transfer a file to the server:

    ./0-transfer_file PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY

Run the nginx scripts on the server as root:

    ./1-install_nginx_web_server
    ./3-redirection
    ./4-not_found_page_404

## Requirements

- Ubuntu 16.04 LTS
- Scripts pass Shellcheck
- All scripts are executable and start with `#!/usr/bin/env bash`

## Author

Landry Irakoze

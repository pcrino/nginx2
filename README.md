# nginx2
On-Site Interview Challenge for WTW #2

11/29/2018

This is my second attempt at deploying nginx running on port 3200

Still having issues with this but I wanted to put this out there as it is a work in progress

Deployment still doesn't work.

Recieving the following error:

 - Rendering SLS 'base:nginx' failed: while constructing a mapping
        in "<unicode string>", line 1, column 1:
          nginx-ppa:
          ^
      found conflicting ID '/etc/nginx/nginx.conf'
        in "<unicode string>", line 26, column 1:
          /etc/nginx/nginx.conf:
          ^

11/30/2018

Removed an unnecessary smylink on the nginx.conf

Removed file watches under service.running as they seemed unnecessary and were causing errors

Script runs without errors now


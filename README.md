# Managining offline cluster using Argo CD

Repository demonstrates how to manage offline cluster using Argo CD.

Argo CD application is configured to use local Git server running inside of the managed cluster. The Git server deployment is defined in
`git-server.yaml` and contains following containers:

* `git-server` - NGINX that forward HTTP requests to CGI server
* `fcgiwrap` - CGI server that handles Git requests
* `git-syncer` - shell script that periodically pulls changes from remote Git repository
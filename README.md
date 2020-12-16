# jws-helm-charts
Helm charts for our JWS images
To build a new version:
```bash
$ helm create jwschart
$ helm package jwschart
$ mv jwschart-0.1.0.tgz docs
$ helm repo index docs --url https://jfclere.github.com/jws-helm-charts
$ git add docs
$ git commit
$ git push origin main
```
# install helm on your openshift cluster
See https://docs.openshift.com/container-platform/4.6/cli_reference/helm_cli/getting-started-with-helm-on-openshift-container-platform.html

# install the jws example
```bash
./helm repo add jwscharts https://jfclere.github.com/jws-helm-charts
./helm repo update
./helm install jwscharts/jwschart --generate-name
NAME: jwschart-1608051834
LAST DEPLOYED: Tue Dec 15 18:03:56 2020
NAMESPACE: rhn-engineering-jclere-code
STATUS: deployed
REVISION: 1
TEST SUITE: None
```
# remove it
```bash
./helm uninstall jwschart-1608051834
```

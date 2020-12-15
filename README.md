# jws-helm-charts
Helm charts for our JWS images
# install helm on your openshift cluster
See https://docs.openshift.com/container-platform/4.6/cli_reference/helm_cli/getting-started-with-helm-on-openshift-container-platform.html
# install the jws example
```bash
./helm install jws-example --generate-name
NAME: jws-example-1608051834
LAST DEPLOYED: Tue Dec 15 18:03:56 2020
NAMESPACE: rhn-engineering-jclere-code
STATUS: deployed
REVISION: 1
TEST SUITE: None
```
# remove it
```bash
./helm uninstall jws-example-1608051834
```

# jws-helm-charts
Helm charts for JWS images on Openshift.

# install helm on your openshift cluster
See https://docs.openshift.com/container-platform/4.6/cli_reference/helm_cli/getting-started-with-helm-on-openshift-container-platform.html

# install a jws example
create a yaml file for your values, like value.yaml:
```
replicas: 4
applicationName: test
test: my_test
```
Install the JWS helm charts and start your jws pods:
```bash
./helm repo add jwscharts https://jfclere.github.io/jws-helm-charts
./helm repo update
./helm install jwscharts/jws-example --generate-name -f ./value.yaml
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
# developping the chart
If you are developing the chart you might start it directly from the repo:
```bash
./helm install jws-example --generate-name
```

# building a new version
To build a new version do the following:
```bash
$ helm package jws-example
$ mv jws-example-0.1.0.tgz docs
$ helm repo index docs --url https://jfclere.github.com/jws-helm-charts
$ git add docs
$ git commit
$ git push origin main
```

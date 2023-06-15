# appsandpipelines
Repo to create a large number of applications, pipelines and clouddriver-accounts that can be loaded to Spinnaker

**1k-k8s-account.sh** - Shell script to generate any number of clouddriver accounts. The output can be copied into clouddriver-local.yaml

**misc** - contains scripts for generating and loading apps and pipelines, based in **base*.json**

**apps, pipelines**; these contain the generated app and pipeline files and execute them

**service-acc-creation**: Instructions creating large number of service accounts.

**load-test**: Scripts to run role-sync many times, trigged multiple pipelines using curl

**spin-cli-command**: spin-cli and supporting files for saving pipelines

**jmeter**: jmeter for simulating users/executions

**apps, pipelines**: folders for holding generated app and pipeline JSONs

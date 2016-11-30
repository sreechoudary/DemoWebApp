#!/bin/bash -ex
# run puppet to deploy tomcatApp.war, and push the result to Jenkins
exec sudo puppet apply --reports http --reporturl=http://ec2-54-174-163-57.compute-1.amazonaws.com:8080/puppet/report deploy.pp
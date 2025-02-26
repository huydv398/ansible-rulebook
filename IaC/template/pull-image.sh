#!/bin/bash
# Description: This script use to pull images from public docker
#              registry and push them to local docker registry.

public_registry_host="quay.io"
local_registry_host="172.16.81.112"
kolla_release="2023.1-ubuntu-jammy"
IMAGE_LIST="kolla_images.list"

#
for qw in `cat $IMAGE_LIST`
do
echo "===========> Pull ==> $qw"
docker pull $public_registry_host/openstack.kolla/$qw:$kolla_release
docker tag $public_registry_host/openstack.kolla/$qw:$kolla_release "$local_registry_host:8443/kolla/openstack.kolla/$qw:$kolla_release"
echo "===========> Push ==> $qw"
docker push "$local_registry_host:8443/kolla/openstack.kolla/$qw:$kolla_release"
docker rmi $public_registry_host/openstack.kolla/$qw:$kolla_release
done

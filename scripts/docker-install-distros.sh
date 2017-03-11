for image in centos debian:jessie scratch alpine ubuntu; do echo $image; done
for image in centos debian:jessie scratch alpine ubuntu; do docker pull $image; done
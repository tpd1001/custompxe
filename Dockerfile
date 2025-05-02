FROM centos 
USER root 
COPY . /tmp/src  
RUN yum install git xz-devel wget make gcc syslinux mkisofs -y &&      git clone https://github.com/ipxe/ipxe/ &&      cd ipxe/src && git checkout 133f4c47 &&      cp -rf /tmp/src/settings.h config/settings.h &&      make bin-x86_64-efi/ipxe.efi EMBED=/tmp/src/custom.ipxe 

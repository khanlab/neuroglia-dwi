Bootstrap: shub
From: khanlab/neuroglia-core

%labels
Maintainer "Ali Khan"

#########
%setup
#########
cp ./install_scripts/*.sh $SINGULARITY_ROOTFS

#########
%post
#########

export DEBIAN_FRONTEND=noninteractive

bash 21.install_MRtrix3_by_source_sudo.sh /opt
bash 28.install_camino_by_source.sh /opt
bash 29.install_unring_by_binary.sh /opt
bash 30.install_dke_by_binary.sh /opt


#########
%environment


#MRtrix3
export PATH=/opt/mrtrix3/bin:$PATH


#camino
export PATH=/opt/camino/bin:$PATH
export LD_LIBRARY_PATH=/opt/camino/lib:$LD_LIBRARY_PATH
export MANPATH=/opt/camino/lib:$MANPATH
export CAMINO_HEAP_SIZE=32000

#unring
export PATH=/opt/unring/bin:$PATH


#dke
export PATH=/opt/dke:$PATH



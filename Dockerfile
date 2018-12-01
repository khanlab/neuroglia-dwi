FROM khanlab/neuroglia-core:v1.5
MAINTAINER <alik@robarts.ca>

RUN mkdir -p /src/install_scripts
COPY install_scripts/ /src/install_scripts

ENV DEBIAN_FRONTEND noninteractive
RUN bash /src/install_scripts/21.install_MRtrix3_by_source_sudo.sh /opt > log_21_mrtrix
RUN bash /src/install_scripts/28.install_camino_by_source.sh /opt > log_28_camino
RUN bash /src/install_scripts/29.install_unring_by_binary.sh /opt > log_29_unring
RUN bash /src/install_scripts/30.install_dke_by_binary.sh /opt > log_30_dke

#remove all install scripts
RUN rm -rf /src


#MRtrix3
ENV PATH /opt/mrtrix3/bin:$PATH


#camino
ENV PATH /opt/camino/bin:$PATH
ENV LD_LIBRARY_PATH /opt/camino/lib:$LD_LIBRARY_PATH
ENV MANPATH /opt/camino/lib:$MANPATH
ENV CAMINO_HEAP_SIZE 32000

#unring
ENV PATH /opt/unring/bin:$PATH


#dke
ENV PATH /opt/dke:$PATH
ENV LC_ALL C



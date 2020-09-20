FROM jupyter/scipy-notebook:dc9744740e12

# install jupyter extensions
RUN conda install --quiet --yes \
        'conda-build' \
        'tqdm' \
        'jupyter_contrib_nbextensions' \
        'jupyter_nbextensions_configurator' && \
    conda build purge-all && \
    fix-permissions $CONDA_DIR

USER root
RUN ldconfig && \
    jupyter nbextension enable toc2/main --sys-prefix && \
    jupyter nbextension enable collapsible_headings/main --sys-prefix

# Install pip, LilyPond, and Matlab Compiler Runtime 2015a
# MCR installation is adopted from a Dockerfile by Stanford Vistalab: 
# https://raw.githubusercontent.com/vistalab/docker/master/matlab/runtime/2015b/Dockerfile
RUN apt-get -qq update && \
    apt-get -qq install -y \
        unzip \
        wget \
        python3-pip \
        lilypond \
        libmagic-dev && \
    mkdir /mcr-install && \
    cd /mcr-install && \
    wget --progress=bar:force http://www.mathworks.com/supportfiles/downloads/R2015a/deployment_files/R2015a/installers/glnxa64/MCR_R2015a_glnxa64_installer.zip && \
    unzip -q MCR_R2015a_glnxa64_installer.zip && \
    apt-get -qq remove -y \
        unzip \
        wget && \
    ./install \
        -destinationFolder /usr/local/MATLAB/MATLAB_Runtime/ \
        -agreeToLicense yes \
        -mode silent && \
    cd / && \
    rm -rf mcr-install

# install tomato v0.14
RUN python3 -m pip install git+https://github.com/sertansenturk/tomato.git@v0.14.0#egg=tomato

USER $NB_UID
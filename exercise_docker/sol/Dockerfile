FROM nfcore/base:1.9

# Create the conda environment
COPY environment.yml /
RUN conda env create -f /environment.yml && conda clean -a

# Make sure conda installation is in the PATH 
# and so are python modules - they should be in PYTHONPATH (tip: add [..]/lib/python3.8/site-packages)
ENV PATH /opt/conda/envs/biopython/bin:$PATH
ENV PYTHONPATH /opt/conda/envs/biopython//lib/python3.8/site-packages:$PYTHONPATH


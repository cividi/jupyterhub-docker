# Start from a core Data Stack stack version
FROM jupyter/datascience-notebook:1386e2046833

# Install the default environment
RUN pip install aiohttp pysal 

# Install mapping support
RUN pip install mapboxgl psycopg2-binary geopandas

# Install mapping services
RUN pip install openrouteservice

# Install plotting librariers
RUN pip install matplotlib

# Install additional ML tools
RUN pip install TextBlob TextBlob-de

# Add template support
RUN pip install jupyterlab_templates
RUN jupyter labextension install jupyterlab_templates
RUN jupyter serverextension enable --py jupyterlab_templates

# Add Git support
#RUN pip install jupyterlab-git
#RUN jupyter labextension install @jupyterlab/git
#RUN jupyter serverextension enable --py --sys-prefix jupyterlab_git

# Add JS support
RUN npm install -g ijavascript
RUN ijsinstall 
#Deprecated: --ijs-install=global

# stae SDK
RUN npm install stae -g


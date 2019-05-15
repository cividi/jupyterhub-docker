# Start from a core Data Stack stack version
FROM jupyter/datascience-notebook:83ed2c63671f

# Install the default environment
RUN pip install aiohttp pysal 

# Install mapping support
RUN pip install mapboxgl psycopg2 geopandas

# Install mapping services
RUN pip install openrouteservice

# Install additional ML tools
RUN pip install TextBlob TextBlob-de

# Add Git support
#RUN pip install jupyterlab-git
#RUN jupyter labextension install @jupyterlab/git
#RUN jupyter serverextension enable --py --sys-prefix jupyterlab_git

# Add JS support
RUN npm install -g ijavascript
RUN ijsinstall --ijs-install=global

# stae SDK
RUN npm install stae -g


# Start from a core Data Stack stack version
FROM jupyter/datascience-notebook:7debeb6894d1

# Install the default environment
RUN pip install aiohttp pysal 

# Install mapping support
RUN pip install mapboxgl psycopg2-binary geopandas

# Install mapping services
RUN pip install openrouteservice
RUN pip install folium

# Install frictionless data toolchain
RUN pip install dataflows
RUN pip install frictionless[all]
RUN pip install frictionless-geojson
# RUN npm install -g data-cli

# Install plotting librariers
RUN pip install matplotlib

# Install additional ML tools
RUN pip install TextBlob TextBlob-de

# Add template support
RUN pip install jupyterlab_templates
RUN jupyter labextension install jupyterlab_templates
RUN jupyter serverextension enable --py jupyterlab_templates

# Add git support
RUN pip install --upgrade jupyterlab-git
# RUN jupyter labextension install jupyterlab_git -y
#RUN jupyter serverextension enable --py --sys-prefix jupyterlab_git
RUN jupyter lab build -y --debug
RUN jupyter server extension enable --py jupyterlab_git

# Add JS support
RUN npm install -g ijavascript
RUN ijsinstall 
#Deprecated: --ijs-install=global

# add draw io extension
RUN pip install --upgrade jupyterlab-drawio
RUN jupyter server extension enable --py jupyterlab_drawio

# s3 browser
RUN pip install jupyterlab-s3-browser
RUN jupyter server extension enable --py jupyterlab_s3_browser

RUN jupyter lab build -y --debug
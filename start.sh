#!/bin/bash

# Disable password and token authentication
mkdir -p ~/.jupyter
echo "c.NotebookApp.token = ''" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.password = ''" >> ~/.jupyter/jupyter_notebook_config.py

# Start Jupyter Notebook
exec jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser


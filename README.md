# SoMoS 2020 demo

TODO: Description

## Running the demo

The demo Jupyter notebook, [demo.ipynb](demo.ipynb), could be run inside Docker. In terminal, first build an image from the `Dockerfile` in the repo:

```bash
docker build . -t sertansenturk/somos2020demo:latest
```

The image is based on [Jupyter scipy docker stack](https://hub.docker.com/r/jupyter/scipy-notebook) and installs tomato and it's dependencies. Note that the image is 5.5GB in size and the build might take some (5 to 30+ minutes) depending on your internet connection.

Once the image is built, you can start a container by:

```bash
docker run -p 8888:8888 -it -v "$PWD":/home/jovyan/work sertansenturk/somos2020demo:latest
```

Once the container is ready, you will see a URL with a token (similar to http://127.0.0.1:8888/?token=8d852...) printed on the terminal. Click the url or copy & paste it to your browser to access Jupyter interface and run the notebook.

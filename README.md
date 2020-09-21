# SoMoS 2020 demo

This repository showcases [Turkish-Ottoman Makam (M)usic Analysis TOolbox (tomato)](https://github.com/sertansenturk/tomato). We demonstrate:

1. how to install `tomato` in modern systems using Docker
2. how to use `tomato` to analyze makam/maqam music recordings

## Running the demo

The demo Jupyter notebook, [demo.ipynb](demo.ipynb), could be run inside [Docker](https://www.docker.com/). Docker is a lightweight service, which use OS-level virtualization to deliver software in "containers." Docker allows consistency and convenience on running software with reliable behaviour. 

After you install Docker ([documentation](https://docs.docker.com/install/)) and clone this repo, you can build the *docker-compose* stack in a terminal by running:

```bash
cd /path/to/somos2020demo
docker-compose build
```

Please do not forget to enter the correct path of the repository above. The stack pre-installs tomato and its dependencies in an image based on the [official Jupyter image](https://hub.docker.com/r/jupyter/scipy-notebook). Note that the image is 5.5GB in size and the build might take ample amount of time in the first run, depending on your internet connection.

Once the stack is built, you can start it by:

```bash
docker-compose up
```

After a few seconds, you will see a URL with a token (similar to http://127.0.0.1:8888/?token=8d852...) printed on the terminal. Click the url or copy & paste it to your browser to access Jupyter interface and run the notebook.

## Demo overview

You can access the demo by clicking on the notebook file called [demo.ipynb](demo.ipynb) in the Jupyter interface. In the demo notebook, we show how to use tomato in three different scenarios:

- Extracting features one-by-one from a short segment of Egyptian music
- Extracting features with a single call on a Turkish makam music recording
- Extending features by applying a score-informed analysis of the same Turkish makam music recording

# SoMoS 2020 demo

TODO: Description

## Running the demo

The demo Jupyter notebook, [demo.ipynb](demo.ipynb), could be run inside Docker. Docker is a lightweight service, which use OS-level virtualization to deliver software in "containers." Docker allows consistency and convenience on running software with reliable behaviour. Please refer to the [documentation](https://docs.docker.com/install/) for installing Docker.

After you install Docker, you build the *docker-compose* stack in terminal by running:

```bash
docker-compose build
```

The stack contains an image based on the [official Jupyter image](https://hub.docker.com/r/jupyter/scipy-notebook), which also installs tomato and its dependencies. Note that the image is 5.5GB in size and the build might take some (5 to 30+ minutes) depending on your internet connection.

Once the stack is built, you can start it by:

```bash
docker-compose up
```

Once ready, you will see a URL with a token (similar to http://127.0.0.1:8888/?token=8d852...) printed on the terminal. Click the url or copy & paste it to your browser to access Jupyter interface and run the notebook.

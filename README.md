# SoMoS 2020 demo

As part of the presentation in SoMos 2020 **[1]**, this repository showcases [Turkish-Ottoman Makam (M)usic Analysis TOolbox (tomato)](https://github.com/sertansenturk/tomato). We demonstrate:

1. how to install `tomato` in modern systems using Docker
2. examples of how to analyze makam/maqam music music using `tomato`

## Running the demo

The demo Jupyter notebook, [demo.ipynb](demo.ipynb), could be run inside [Docker](https://www.docker.com/). Docker is a lightweight service, which use OS-level virtualization to deliver software in "containers." Docker allows consistency and convenience on running software with reliable behaviour. 

After you install Docker ([documentation](https://docs.docker.com/install/)) and clone this repo, you can build the *docker-compose* stack in a terminal by running:

```bash
cd /path/to/somos2020demo
docker-compose build
```

Please do not forget to enter the correct path of the repository above. The stack pre-installs tomato and its dependencies in an image based on an [official Jupyter image](https://hub.docker.com/r/jupyter/scipy-notebook). Note that the image is 5.5GB in size and the first build might take a long time (2 to 30+ minutes), depending on your hardware specifications and internet connection.

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

## 7. Authors

Sertan Şentürk
contact@sertansenturk.com

## 8. Acknowledgments

We would like to thank [Harold Hagopian](https://en.wikipedia.org/wiki/Harold_Hagopian), the founder of [Traditional Crossroads](http://traditionalcrossroads.com/About-Us), for allowing us to use Tanburi Cemil Bey's performance of [Uşşak Sazsemaisi](http://musicbrainz.org/recording/f970f1e0-0be9-4914-8302-709a0eac088e) in our demos.

## 8. References

_This repo has been created for:_

  **[1]** Ganguli, K. K., Şentürk, S., Eisenberg, A., and Guedes, C. (2020). *Computational approaches to aid ethnographic research on Maqam melodies* [abstract]. In 1st Symposium of the International Council for Traditional Music Study Group on Sound, Movement, and the Sciences (SoMoS 2020). Stockholm, Norway

_The toolbox has been realized as part of the thesis:_

  **[2]** Şentürk, S. (2016). *Computational analysis of audio recordings and music scores for the description and discovery of Ottoman-Turkish makam music.* Ph.D. thesis, Universitat Pompeu Fabra, Barcelona, Spain.  

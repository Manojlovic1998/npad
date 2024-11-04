# WebUI for Ergogen

This repository contains the source code for the web interface of Ergogen and the Ergogen engine as a submodule repo.

I plan to improve the web interface and add more features to it. If you have any suggestions or want to contribute, feel free to open an issue or a pull request.

The original Ergogen repository can be found [here](https://ergogen.xyz/)

## How this project differs from the original Ergogen

- The web interface is fully dockerized and served.
- It is a mono-repo with the Ergogen engine as a submodule. This makes it easier to manage the project and deploy it. Furthermore, it is easier to work with it when developing new keyboards or features.

## Plans for the future

- Rewrite the web interface using Angular.
- Build a pipeline for synchronizing the Ergogen engine from the main project with the web interface.
- Build a pipeline for updating the Ergogen interface with the latest changes from this project.
- Make it servable locally, on github pages, or through docker images.

## How to run the project

1. Clone the repository
2. Run `git submodule update --init --recursive` to clone the Ergogen engine
3. Run `bash util-script.sh` to build the docker image and run the container

## How to build output files

1. `cd` into the Ergogen engine directory
2. Run `npm exec -- ergogen ../keeb-yamls/npad-mx/.` to build the output files
3. The output files will be in the `output` directory of the Ergogen engine

4. To build the output files with case files in stla format, run the following command

```bash
npm exec -- ergogen ../keeb-yamls/npad-mx/. && for i in output/cases/*.jscad; do npm exec -- @jscad/cli@1 "$i" -of stla; done
```

I run everything with npm exec because I do not want any global dependencies on my system. 😄

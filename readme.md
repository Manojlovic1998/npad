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

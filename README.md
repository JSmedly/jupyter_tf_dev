# jupyter_tf_dev
Template for creating docker development containers using tensorflow and jupyter. Fully functional with VS Code (in fact, VS Code is recommended).

To set up the docker environment, download the dockerfile and build the image with:
    docker build -t [environment_name] . 

Run the docker container with:
    docker run jupyter_tf_dev

If using VS Code, it is possible to click the box in the bottom left hand corner of VS code and select the "reopen folder in container" option.

# syntax=docker/dockerfile:1
FROM tensorflow/tensorflow:2.7.0-gpu-jupyter
# WORKDIR /workspace

# Update
RUN apt-get update

# Install CV2 Dependencies
# RUN apt-get install ffmpeg libsm6 libxext6  -y

# Install Dependencies
COPY requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt

# Run Jupyter Notebook
CMD [ "jupyter", "notebook", "--port=8888", "--no-browser",\
    "--ip=0.0.0.0", "--allow-root"]

EXPOSE 8888

# Install python3 and pip3
#RUN apt-get update && apt-get install -y \
#    python3 \
#    python3-pip
#RUN pip3 -q install pip --upgrade

# Install dependencies
#RUN pip3 install -r requirements.txt

# Add Tini. Tini ates as a process subreaper for jupyter.
# This prevents kernel crashes
#ENV TINI_VERSION v0.19.0
#ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
#RUN chmod +x /tini
#ENTRYPOINT ["/tini", "--"]


# Run jupyter notebook

FROM gitpod/workspace-full

USER root
RUN apt-get update && apt-get install -y libgl1-mesa-glx

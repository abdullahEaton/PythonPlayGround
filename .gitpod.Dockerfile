FROM gitpod/workspace-full
USER gitpod
RUN apt-get update && apt-get install -y libgl1-mesa-glx

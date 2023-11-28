FROM gitpod/workspace-full

USER root

# Install dependencies
RUN apt-get update && apt-get install -y \
    libglew-dev \
    cmake \
    libboost-all-dev \
    libeigen3-dev \
    libopencv-dev \
    python3-dev \
    python3-numpy \
    libpython2.7-dev

# Install Pangolin
RUN git clone https://github.com/stevenlovegrove/Pangolin.git && \
    cd Pangolin && \
    mkdir build && \
    cd build && \
    cmake .. && \
    cmake --build .

# Clone ORB_SLAM3
RUN git clone https://github.com/UZ-SLAMLab/ORB_SLAM3.git

# Build ORB_SLAM3
RUN cd ORB_SLAM3 && \
    chmod +x build.sh && \
    ./build.sh

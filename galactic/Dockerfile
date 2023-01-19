FROM collaborativerobotics/ambf-ros:galactic

# Clone AMBF
RUN cd && git clone -b ros2_bridge --single-branch https://github.com/macmacal/surgical_robotics_challenge.git

# Install scripts
RUN cd /root/surgical_robotics_challenge/scripts \
    && pip3 install -e .

COPY ./run.sh / 
# Setup command for ros1-bridge and AMBF
CMD ["bash", "/run.sh"]

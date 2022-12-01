FROM collaborativerobotics/ambf-ros:galactic

# Clone AMBF
RUN cd && git clone https://github.com/collaborative-robotics/surgical_robotics_challenge.git

COPY ./run.sh / 
# Setup command for ros1-bridge and AMBF
CMD ["bash", "/run.sh"]
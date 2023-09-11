FROM rocker/r-base:4.3.0

# Install git
RUN apt update && apt install git -y --no-install-recommends

RUN install2.r sqliter

# Adding colors
SHELL ["/bin/bash", "-c"]

  #  echo "eval \"\`dircolors\`\" >> ~/.bashrc && \
RUN echo "export LS_OPTIONS='--color=auto'" >> ~/.bashrc && \
  echo "eval \"\$(dircolors)\"" >> ~/.bashrc && \
  echo "alias ls='ls \$LS_OPTIONS'" >> ~/.bashrc && \
  echo "alias ll='ls \$LS_OPTIONS -l'" >> ~/.bashrc && \
  echo "alias l='ls \$LS_OPTIONS -lA'" >> ~/.bashrc 
  

# && \
#   alias ls='ls $LS_OPTIONS' && \
#   source /etc/bash.bashrc; source ~/.bashrc

# Installing nano and vim
RUN apt install nano vim -y --no-install-recommends
    

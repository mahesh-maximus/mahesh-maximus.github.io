FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y 
RUN apt install build-essential -y
RUN apt install git -y
RUN apt-get install ruby-full build-essential zlib1g-dev -y
RUN echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc 
RUN echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc 
RUN echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc 
RUN gem install jekyll bundler
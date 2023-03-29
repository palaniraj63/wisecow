FROM ubuntu:20.04
WORKDIR /app
COPY wisecow.sh .
# Install required packages
RUN apt-get update && \
    sudo apt install fortune-mod cowsay -y
RUN chmod +x wisecow.sh
EXPOSE 4499
CMD ["/bin/bash", "wisecow.sh"]

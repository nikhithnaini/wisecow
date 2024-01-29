FROM ubuntu:latest
WORKDIR /wisecow
COPY . .
RUN sudo apt install fortune-mod cowsay -y
CMD [“./wisecow”] 

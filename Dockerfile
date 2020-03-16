FROM ubuntu:latest
wget https://download.foldingathome.org/releases/public/release/fahclient/debian-testing-64bit/v7.4/fahclient_7.4.4_amd64.deb
sudo dpkg -i --force-depends fahclient_7.4.4_amd64.deb
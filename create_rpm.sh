#!/usr/bin/bash
clear
version="2.4.8"

mv davinci-helper davinci-helper-${version}
tar -cvzf davinci-helper-${version}.tar.gz davinci-helper-${version}
mv davinci-helper-${version} davinci-helper

cp davinci-helper-${version}.tar.gz "/home/$USER/rpmbuild/SOURCES/"
rpmbuild -bb davinci-helper.spec

cp /home/$USER/rpmbuild/RPMS/noarch/davinci-helper-${version}-1.noarch.rpm ./

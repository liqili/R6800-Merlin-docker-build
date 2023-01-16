FROM ubuntu:16.04 

#COPY build.sh /root/build.sh
#
#COPY download_merlin.sh /root/download_merlin.sh

RUN dpkg --add-architecture i386 \
    && apt-get update -y \
    && apt-get -y install vim build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch \
    python3.5 python2.7 unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib p7zip p7zip-full \
     msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint device-tree-compiler \
      g++-multilib antlr3 gperf wget libncurses5:i386 libelf1:i386 lib32z1 lib32stdc++6 gtk-doc-tools intltool binutils-dev cmake lzma \
      liblzma-dev lzma-dev uuid-dev liblzo2-dev xsltproc dos2unix libstdc++5 docbook-xsl-* sharutils autogen shtool gengetopt libltdl-dev libtool-bin \
      linux-generic bc \
    && apt-get autoremove -y \
    && apt-get autoclean -y \
    && rm -rf /var/lib/apt/lists/* \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Pacific/Auckland" > /etc/timezone \
    # && mkdir -p /home/SWRT-dev/swrt-gpl \
    # && mkdir -p /home/SWRT-dev/mtk-toolchains \
    && git config --global user.email "liqili2005@gmail.com" \
    && git config --global user.name "Kunkka Li" 


WORKDIR /home/SWRT-dev/mtk-toolchains
RUN ln -sf $(pwd)/toolchain-mipsel_24kc_gcc-5.4.0_musl-1.1.24 /opt/

WORKDIR /home/SWRT-dev/swrt-gpl/release/src-mtk-mips
CMD ["/bin/bash"]




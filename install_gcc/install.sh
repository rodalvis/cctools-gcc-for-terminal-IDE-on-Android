#!/system/bin/sh

chmod +x ./unzip

find . -regex '.*\.zip' -exec sh -c "./unzip -oq \"{}\" -d ~/" \;

export PATH=~/cctools/bin
export CCTOOLSDIR=~/cctools
sh ~/cctools/postinst
sh ~/cctools/prerm


sed -i '/cctools/d' ~/.bash_aliases
echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/cctools/lib' >> ~/.bash_aliases
echo 'export PATH=$PATH:$HOME/cctools/bin' >> ~/.bash_aliases

source ~/.bash_aliases



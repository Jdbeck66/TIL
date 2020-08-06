# Install Qiime2 on Research Cluster

[Return Home](../README.md)


```bash
wget https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh
wget https://data.qiime2.org/distro/core/qiime2-2020.6-py36-linux-conda.yml

chmod u+x Anaconda3-2020.07-Linux-x86_64.sh

./Anaconda3-2020.07-Linux-x86_64.sh

export PATH=~/anaconda3/condabin:$PATH

anaconda3/condabin/conda env create -n qiime2-2020.6 --file qiime2-2020.6-py36-linux-conda.yml
```
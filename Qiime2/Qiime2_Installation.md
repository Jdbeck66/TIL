# Install Qiime2 on Research Cluster

[Return Home](../README.md)


## Qiime2 v2020.6 and Anaconda v2020.07

```bash

# Get anaconda3 and the qiime2 instructions
wget https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh
wget https://data.qiime2.org/distro/core/qiime2-2020.6-py36-linux-conda.yml

# Make the anaconda3 script executable
chmod u+x Anaconda3-2020.07-Linux-x86_64.sh

# Execute the anaconda script - ANSWER YES or ENTER to each optionconda
./Anaconda3-2020.07-Linux-x86_64.sh

# Make sure anaconda is accessible to the path
export PATH=~/anaconda3/condabin:$PATH

# Create a conda environment called qiime2-2020.6 and load qiime2 into it
anaconda3/condabin/conda env create -n qiime2-2020.6 --file qiime2-2020.6-py36-linux-conda.yml

# If prompted, initialize your shell
conda init bash

# After completed
source .bashrc

# To start the environment
conda activate qiime2-2020.6

# To close the environment
conda deactivate qiime2-2020.6

# To test your install
qiime2 --help
```
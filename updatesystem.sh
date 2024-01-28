sudo apt-get update
sudo apt-get install screen
sudo apt-get install htop

PARENT_DIR="/users/nsantil"
MINICONDA3_DIR="/users/nsantil/miniconda3"

if [ ! -d "$PARENT_DIR" ]; then
        mkdir -p "$PARENT_DIR"
        echo "Parent directory created: $PARENT_DIR"
else
        echo "Parent directory '$PARENT_DIR' already exists."
fi

if [ ! -d "$MINICONDA3_DIR" ]; then
        mkdir -p "$MINICONDA3_DIR"
        echo "Directory created: $MINICONDA3_DIR"
else
        echo "Folder '$MINICONDA3_DIR' already exists."
fi

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O "$MINICONDA3_DIR"/miniconda.sh
bash "$MINICONDA3_DIR"/miniconda.sh -b -u -p "$MINICONDA3_DIR"
rm -f "$MINCONDA3_DIR"/miniconda.sh
"$MINICONDA3_DIR"/bin/conda init bash
source ~/.bashrc
echo "bash initialized"
"$MINICONDA3_DIR"/bin/conda init zsh
source ~/.bashrc
echo "zsh initialized"
"$MINICONDA3_DIR"/bin/conda activate base
"$MINICONDA3_DIR"/bin/conda install -c conda-forge notebook -y
"$MINICONDA3_DIR"/bin/conda install -c conda-forge nb_conda_kernels -y
"$MINICONDA3_DIR"/bin/conda install nb_conda -y
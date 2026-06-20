#!/bin/bash

echo "Setting up the CEDAR AI Demo environment..."

# Check if python3 is installed
if ! command -v python3 &> /dev/null
then
    echo "Python3 could not be found. Please install Python3 before running this script."
    exit 1
fi

# Check if pip3 is installed
if ! command -v pip3 &> /dev/null
then
    echo "pip3 could not be found. Please install pip3."
    exit 1
fi

echo "Installing required Python packages..."
pip3 install --upgrade pip
pip3 install numpy pandas xarray netCDF4 scikit-learn scipy matplotlib jupyterlab

echo "Installing PyTorch..."
# Installing standard PyTorch via pip. 
# Note: If you have a specific NVIDIA GPU and CUDA version installed, 
# you may need to adjust this command based on instructions from https://pytorch.org/get-started/locally/
pip3 install torch torchvision torchaudio

echo "Setup complete. You can now launch the environment using 'jupyter lab' or 'jupyter notebook'."

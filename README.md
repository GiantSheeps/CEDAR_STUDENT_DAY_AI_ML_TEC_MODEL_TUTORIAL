# CEDAR Student Day AI Demo: TEC Prediction

This repository contains an educational Jupyter Notebook demonstrating the application of machine learning techniques to space physics. Specifically, it explores predicting Total Electron Content (TEC) by incorporating lower atmospheric drivers and geomagnetic indices.

The demonstration compares Convolutional Neural Networks (CNNs) built with PyTorch against tabular HistGradientBoosting baseline models. It gradually introduces complexity by evaluating three distinct feature sets, ranging from simple spatial and temporal coordinates to complex PCA-reconstructed spatial fields of neutral atmospheric variables.

## Notebook Contents

The `CEDAR_TEC_DEMO_X.ipynb` notebook is structured chronologically to guide you through a standard machine learning workflow in the geosciences:

* **Automated Data Retrieval:** Pulls the necessary Madrigal TEC and JAWARA reanalysis NetCDF files directly from Zenodo (Record ID: 20769370).
* **Data Alignment and Preprocessing:** Applies temporal lags to simulate forcing, standardizes inputs, and compresses the heavy JAWARA 3D fields using Principal Component Analysis (EOF analysis).
* **CNN Architecture and Training:** Constructs and trains three PyTorch CNN models using incrementally complex datasets. 
* **Tabular Baseline Comparison:** Evaluates the same feature sets using Scikit-Learn's HistGradientBoostingRegressor to compare deep learning against classical ensemble methods.
* **Visualization:** Generates loss curves, density scatter plots for validation, and geographical maps comparing the model predictions against ground truth.

## How to Run

1.  Clone this repository to your local machine.
2.  Execute the provided bash script to install all required dependencies:
    ```bash
    bash setup.sh
    ```
3.  Launch Jupyter Notebook or JupyterLab:
    ```bash
    jupyter notebook
    ```
4.  Open `CEDAR_TEC_DEMO_NEW.ipynb` and run the cells sequentially. The first cell will automatically download the 2.6 GB dataset into your working directory.

## Required Packages

The execution environment requires Python 3.8 or newer and the following libraries:
* `numpy`
* `pandas`
* `xarray`
* `netCDF4` (required for xarray to read .nc files)
* `torch` (PyTorch)
* `scikit-learn`
* `scipy`
* `matplotlib`
* `jupyter`

### Automated Setup

You can install all of these dependencies automatically using the provided setup script. Before running the script from your terminal, you will need to grant it execution permissions:

```bash
chmod +x setup.sh
./setup.sh

#!usr/bash

#code to install opensmile and dependencies
bash install_opensmile.sh

#code to get the MFCC for all sample files.
bash get_mfcc_for_samples.sh

#code to get the accumulated MFCC File
mkdir -p accumulated_folder
python accumulation.py text_samples_folder accumulated_folder

#code to normalize the accumulated file. The Mean and Variance are stored so that they can be used later for normalizing the test data
bash autonorm_train.sh

#install OpenMPI and Dependencies
bash install_OpenMPI_Linux.sh
bash install_MPI_C_Compiler.sh
bash install_ParallelNetCDF.sh

#install Open MPI based Parallel KMEANS and get clusters - Number-200 (change in the script if you want different k)
bash apply_kmeans_on_accumulated_text_files.sh

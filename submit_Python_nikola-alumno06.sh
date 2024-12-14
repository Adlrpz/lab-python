#!/bin/bash
#
#SBATCH -p hpc-bio-nikola-cpu          # Cola a utilizar
#SBATCH --chdir=/home/alumno06/lab4 # Directorio de trabajo
#SBATCH -J python-notebook                  # Nombre del trabajo

# Cargar los modulos
module load anaconda/2023.03

# Llamar al interprete ipython
ipython reduc-operation-alumno06.ipynb $1

# descargar el modulo 
module unload anaconda/2023.03

#!/bin/bash
#
#SBATCH -p hpc-bio-nikola-cpu          # Cola a utilizar
#SBATCH --chdir=/home/alumno06/lab4   # Directorio de trabajo
#SBATCH -J python-notebook            # Nombre del trabajo

# Cargar los módulos necesarios
module load anaconda/2023.03

# Ejecutar el comando 5 veces
for i in {1..5}; do
    ipython reduc-operation-alumno06.ipynb $1
done

# Descargar el módulo
module unload anaconda/2023.03


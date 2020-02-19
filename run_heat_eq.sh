#!/bin/bash

module load amber
module load cuda

export CUDA_VISIBLE_DEVICES=0

pmemd.cuda -O -i equil_1.in -o TadA710_RNA_eq_1.out -p TadA710_RNA.prmtop -c TadA710_RNA_heat.rst  -r TadA710_RNA_eq_1.rst -ref TadA710_RNA_heat.rst -x TadA710_RNA_eq_1.nc

pmemd.cuda -O -i equil_2.in -o TadA710_RNA_eq_2.out -p TadA710_RNA.prmtop -c TadA710_RNA_eq_1.rst  -r TadA710_RNA_eq_2.rst -ref TadA710_RNA_eq_1.rst -x TadA710_RNA_eq_2.nc

pmemd.cuda -O -i equil_3.in -o TadA710_RNA_eq_3.out -p TadA710_RNA.prmtop -c TadA710_RNA_eq_2.rst  -r TadA710_RNA_eq_3.rst -ref TadA710_RNA_eq_2.rst -x TadA710_RNA_eq_3.nc

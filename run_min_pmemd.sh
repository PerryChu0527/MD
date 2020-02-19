#!/bin/bash

#export CUDA_VISIBLE_DEVICES=0

pmemd.cuda -O -i min.in -o TadA710_RNA_min.out -p TadA710_RNA.prmtop -c TadA710_RNA.inpcrd  -r TadA710_RNA_min.rst                    

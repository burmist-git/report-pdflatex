#!/bin/bash

########################################################################
#                                                                      #
# Copyright(C) 2017 - LBS - (Single person developer.)                 #
# Sun Feb  4 17:45:51 CET 2018                                         #
# Autor: Leonid Burmistrov                                             #
#                                                                      #
# File description:                                                    #
#                  This script make list of .jpg files and save the    #
#                  list into the .dat file.                            #
#                                                                      #
# Input paramete:                                                      #
#                   NON.                                               #
#                                                                      #
# This software is provided "as is" without any warranty.              #
#                                                                      #
########################################################################

makeListOfPhotos_bash(){

    ls -lrt *.JPG | awk '{print $9}' | tee $1

}

outDatfileN="./listOfPhotos.dat"
rm -rf $outDatfileN
makeListOfPhotos_bash $outDatfileN

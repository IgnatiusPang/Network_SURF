### Script: print_triplet_network.R
### Author: Ignatius Pang 
### Date: 13-7-2016
## Description: I want to visualize the network, which consists of all the triplet motifs. Only edges in triplet motifs are shown.

library(RCy3)
library(dplyr)

#######################################################################################################################

# cd '/media/z3371724/PostDoc/2016/Triplet_Motifs/Source/Poster/'
setwd ( '/home/ignatius/Documents/Postdoc/2017/Network_SURF')

data_directory <- file.path(getwd(), "Data/R_Data/" ) 

options <- commandArgs(trailingOnly = TRUE)


source( file.path (getwd(), 'Source', 'draw_triplet_motif_network_helper.R' ) )

#######################################################################################################################
# Read through the list of all triplet motifs 

triplet_motifs_costanzo <- readRDS( file=paste(data_directory, "triplet_motifs_costanzo_2016.Rdata", sep="") ) 

triplet_motifs_costanzo <- as.data.frame ( triplet_motifs_costanzo )

#######################################################################################################################

cw <- draw_triplet_motif_network  ( triplet_motifs_costanzo, 'All triplets network' ) 

triplet_motif_network_display_style(cw) 

#######################################################################################################################

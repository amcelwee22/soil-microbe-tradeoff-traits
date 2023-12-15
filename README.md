# soil-microbe-tradeoff-traits

This repository contains all the code and associated files used in my project titled 'Identifying general genomic feature trade-offs and their phylogenetic relationships among soil resident microorganisms'

The main file is `Computational_Genomics_Project_clean.ipynb`, a Jupyter notebook file which contains the code for downloading the database, calculating the general genomic feature values, creating the phylogenetic tree with PhyloPhlAn 3.0, and running the tree and trait value data through BayesTraitsV4. It also discusses the Tradeoff Feature Analysis using ParTI and R PCA. In addition, in the main directory there are 3 other files:
* `NEW_Genome_feature_values.csv` is the output from the python program calculating the genome feature values for the 890 RefSoil entries
* `NEW_RefSoil_organism_database_info.tsv` is the tab file which contains all the information about the RefSoil entries including their nucleotide and assembly accession numbers, as well as is where I copied the information about the updated organism names and whether or not the entry was included when I truncated the database for phylogenetic analysis
* `New_genome_files.tre` is the Newick tree output after running PhyloPhlAn 3.0 on the 203 RefSoil entries

`BayesTraits_Inputs\` folder contains the files used for testing phylogenetic signal with BayesTraits including:
* `LOGTranform_NEWGenomeNEWFeaturevalues.tsv` file with the log transformed genomic feature values for the 203 RefSoil entries used in the BayesTraits analysis
* `phylophlan_accurate_with_NewRefSoil_genome_features.nex` file which is the phylogenetic tree output from PhyloPhlAn 3.0 converted into Nexus format using Newick2Nexus

`Tradeoff_Feature_Analysis\` contains the files used for identifying the tradeoff features. These are split between the `/ParTI/` folder for the files and scripts used in the ParTI analysis and the `/R/` folder for the files and scripts used to perform PCA loading analysis in R.
  In `/ParTI/` is:
  * `/Input/` folder of input files used for ParTI analysis containing the `feature_names.list` file which lists the general genomic feature names used for enrichment analysis and the `values_only_LOG_NEWGenomeNEWFeaturevalues.csv` file which contains the log transformed feature values with no headers and no RefSoil identifiers as required by the ParTI program.
  * `/Output/` folder of the various output files produced by ParTI as part of its program
  * `new_genome_feature_analysis.m` file of the Matlab script I created to run ParTI on the genome feature values

  In `/R/` is:
  * `Backup_R_PCA_Analysis.Rmd` R markdown file which contains the code used to do the PCA loading analysis on the genome feature values, as well as `Backup_R_PCA_Analysis.html` which is just the html output of the R markdown file
  * `LOGTranform_NEWGenomeNEWFeaturevalues.xlsx` file containing the log transformed feature values with the column headers and RefSoil identifiers used in the R PCA analysis
  * `2D_FeaturePCAloadingPlot.png` image file of the output from the 2D PCA loading analysis done in R
    

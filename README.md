# metaVirus
![logo](https://user-images.githubusercontent.com/57667417/198717991-34ddc469-bc11-460a-9aef-f6b571891eac.png)

metaVirus aims to combine the three major virus data repositories (VirusHost, ViralZone, ICTV, NCBI Taxonomy and NCBI Refseq) into a R package for facilitating the application of the viruses descriptions, variants sequences and taxonomy data into the statistical environment of R. It is also developing a public API to explore the data integration mechanisms with phylogenetic, metagenome or machine learning approach.

## Dependencies

The metaVirus package has the following dependencies:

```bash
R version 4.0.0 or later
[seqinR](https://cran.r-project.org/package=seqinr)
[devtools](https://cran.r-project.org/package=devtools)
```

## Installation

Use the devtools package to install from GitHub.

```R
library(devtools)
install_github("labinfo-lncc/metavirus", ref="main")
```

## Overview

![workflow](https://user-images.githubusercontent.com/57667417/198733715-f68378a4-b5ec-489d-8f0b-30e6f23c2fc8.png)

Fig 1. Summary of workflow tasks, main functions and its outputs. 

## Environment setup

## Get virus data

## Retrive sequences from NCBI RefSeq

## Preprocessing

## Applicability and practical examples 

## Citation

The metaVirus package is currently in press. To properly cite it, use the citation function.

```R
citation("metavirus")
```
```R
# To cite package ‘metavirus’ in publications use:
#   ANDRADE, A. A. S. (2022). metaVirus: an public api and integrative tool to get viruses data into R system. R package version 1.0.
# A BibTeX entry for LaTeX users is
#   @Manual{,
#     title = {metaVirus: an public api and integrative tool to get viruses data into R system},
#     author = {Amanda Araújo Serrão de Andrade, Otavio Jose Bernardes Brustolini, Eduardo Wagner, Ana Tereza Ribeiro Vasconcelos},
#     year = {2022},
#     note = {R package version 1.0},
#   }
#  ATTENTION: This citation information has been auto-generated from the package
#  DESCRIPTION file and may need manual editing, see ‘help("citation")’.
```

## License

Artistic License 2.0

If you have any queries or find a bug, please submit an issue on GitHub or email [atrv@lncc.br](mailto:atrv@lncc.br).


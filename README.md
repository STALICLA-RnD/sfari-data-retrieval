![](images/STALICLA_logo_color.png){width="189"}

# SFARI Gene Web Scrapper

[![](https://zenodo.org/badge/doi/XXXX/xxx.svg)](http://dx.doi.org/XXXX/xxx)

This repository contains the codes employed for the obtention of the data in the SFARI gene website, an evolving online database designed to permit quick entrance into the genetics of neurodevelopmental disorders (NDDs), and to help researchers track the genetic risk factors emerging from most recent studies.

The scrappers where used to obtain both patient and population level data on copy number variation (CNVs), and were used on the versions of the website from 2020, including the updated current catalog of risk CNVs, and the archived version.

It contains:

-   /data folder with tables listing the CNVs evaluated.
-   /src folder with R codes to scrape the data using *Rvest* library.

The current version of the website and the data can be found in:

<https://gene.sfari.org/database/cnv/>

Hopefully this will make it easier for researches in the field to obtain insights from this publicly avaliable data. This codes were developed and executed under the framework of the publication "Identification of novel driver risk genes in CNV loci associated with neurodevelopmental disorders."

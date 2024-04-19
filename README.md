![](images/STALICLA_logo_color.png){width="189"}

# SFARI Gene Web Scrapper

[![DOI](https://zenodo.org/badge/doi/XXXX/xxx.svg)](http://dx.doi.org/XXXX/xxx)

<https://img.shields.io/badge/R-276DC3?style=for-the-badge&logo=r&logoColor=white>

This repository contains the codes employed for the obtention of the data in the SFARI gene website, an evolving online database designed to permit quick entrance into the genetics of neurodevelopmental disorders (NDDs), and to help researchers track the genetic risk factors emergin from most recent studies.

The scrappers where used to obtain both patient and population level data on copy number variation (CNVs), and were used on the versions of the website from 2020, including the updated current catalog of risk CNVs, and the archived version.

It contains:

-   /data folder with tables listing the CNVs evaluated
-   /src folder with R codes to scrape the data using Rvest library.

The current version of the web can be found in:

<https://gene.sfari.org/database/cnv/>

Hopefully this makes it easier to researches in the field to obtain insights from this publicly avaliable data. This codes were developed and executed under the framework of the publication "Identification of novel driver risk genes in CNV loci associated with neurodevelopmental disorders."

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img src="https://i.creativecommons.org/l/by/4.0/88x31.png" alt="Creative Commons License" style="border-width:0"/></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>

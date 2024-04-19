

#---------------------------\\   Getting the regions in the given order for the first version  //----
page <- list()
# Get list of cytobands in SFARI base
page <- read_ods(path = "./data/raw/CNV_regions/CNV.ods", 
                 col_names = FALSE ,col_types = NA , na = "", skip = 0)
urls <- c()
for(i in page) {
  urls <- paste0("https://gene-archive.sfari.org/database/cnv/",i,"#populations-carriers-tab")
  file <- paste0("gene", i, ".html")
}
urls <- urls[1:2273]
urls<- sort(urls)
page <- lapply(urls, FUN = function(x) 
  as.character(gsub("https://gene-archive.sfari.org/database/cnv/|#populations-carriers-tab","", x)))  
CNV_regions <- as.vector(unlist(page))


#-----------------------------\\   Getting the regions in the given order for the second version   //----


UPDATED_page <- list()
UPDATED_page <- read_ods( path = "./data/raw/CNV_regions/UPDATED_CNV.ods", col_names = FALSE ,col_types = NA , na = "", skip = 0)
UPDATED_urls <- c()

for(i in UPDATED_page) {
  
  UPDATED_urls <- paste0("https://gene.sfari.org/database/cnv/",i,"#populations-carriers-tab")
  UPDATED_file <- paste0("gene", i, ".html")
  #download.file(UPDATED_urls, UPDATED_file,method = "libcurl")
}

UPDATED_urls<- sort(UPDATED_urls)
UPDATED_page <- lapply(UPDATED_urls, FUN = function(x) as.character(gsub("https://gene.sfari.org/database/cnv/|#populations-carriers-tab","", x)))  
UPDATED_CNV_regions <- as.vector(unlist(UPDATED_page))


# ------------------------------------------------------------------------------
# ------------------------- WEB SCRAPPING USING RVEST LIBRARY.------------------
# ------------------------------------------------------------------------------
# 
# -------------------------------------------------\\Case_population_WS//-------

 Case_population_ls <- list()
 for (j in seq_along(urls)) {
   Case_population_ls[[j]] <- urls[[j]] %>%
     read_html() %>%
     html_nodes("case-population")%>%html_nodes(" .data-block__title,
                                           .data-block__link-out, .data-block__value")%>%html_text()
 }

# ----------------------------------------------\\Control_population_WS//-------

 Control_population_ls <- list()
 for (j in seq_along(urls)) {
   Control_population_ls[[j]] <- urls[[j]] %>%
     read_html() %>%
     html_nodes("control-population")%>%html_nodes(" .data-block__title,
                                                    .data-block__link-out, .data-block__value")%>%html_text()
 }

 #---------------------------------------------------\\Case_individuals_WS//----

 Case_individuals_ls <- list()
 for (j in seq_along(urls)) {
   Case_individuals_ls[[j]] <- urls[[j]] %>%
     read_html() %>%
     html_nodes(" case-individuals")%>%html_nodes(".data-block__title , .page-title , .data-block__value")%>%html_text()
 }

 #------------------------------------------------\\Control_individuals_WS//----

 Control_individuals_ls <- list()
 for (j in seq_along(UPDATED_urls)) {

   Control_individuals_ls[[j]] <-
     read_html(urls[[j]]) %>%
     html_nodes(" control-individuals")%>%html_nodes(" .data-block__title , .page-title , .data-block__value")%>%html_text()
 }

#---------------------------------------------\\UPDATED_Case_population_WS//----
 UPDATED_Case_population_ls <- list()
 for (j in seq_along(UPDATED_urls)) {

   UPDATED_Case_population_ls[[j]] <- UPDATED_urls[[j]] %>%
     read_html() %>%
     html_nodes("case-population")%>%html_nodes(" .data-block__title, .data-block__link-out, .data-block__value")%>%html_text()
 }

# ----------------------------------------\\UPDATED_Control_population_WS//-----

 UPDATED_Control_population_ls <- list()
 for (j in seq_along(UPDATED_urls)) {

   UPDATED_Control_population_ls[[j]] <- UPDATED_urls[[j]] %>%
     read_html() %>%
     html_nodes("control-population")%>%html_nodes(" .data-block__title, .data-block__link-out, .data-block__value")%>%html_text()
 }


# ----------------------------------------\\UPDATED_Case_individuals_WS//-------
 UPDATED_Case_individuals_ls <- list()
 for (j in seq_along(UPDATED_urls)) {
   UPDATED_Case_individuals_ls[[j]] <- UPDATED_urls[[j]] %>%
     read_html() %>%
     html_nodes(" case-individuals")%>%html_nodes(".data-block__title , .page-title , .data-block__value")%>%html_text()

 }
#--------------------------------------\\UPDATED_Control_individuals_WS//-------

 UPDATED_Control_individuals_ls <- list()
 for (j in seq_along(urls)) {
   UPDATED_Control_individuals_ls[[j]] <-
     read_html(UPDATED_urls[[j]]) %>%
     html_nodes(" control-individuals")%>%html_nodes(" .data-block__title , .page-title , .data-block__value")%>%html_text()
 }


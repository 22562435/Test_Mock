import_multiple_csv <- function(pathway = "data/.") { #initial pathway is assumed to be data/.
    temp <- list.files(path = pathway, pattern = "\\.csv$") # fetching the file names and saves them as temp for naming purposes
    for (i in 1:length(temp)) { #loops for the length of length
        file_name <- gsub(pattern = "\\.csv$", replacement = "", x = temp[i]) #removes. csv
        assign(file_name, read.csv(file.path(pathway, temp[i])), envir = .GlobalEnv)
    }
    rm(i, temp) # removing temporary variables- redundant since in function
}



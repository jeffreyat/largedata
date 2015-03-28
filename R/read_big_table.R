#' Reads a text file into a data.frame faster than read.table for big files.
#' 
#' This function reads a file into an SQLite database temporarily, returns it
#' to a data.frame, and then unloads the database. This is many times faster than
#' read.table for big data.
#' 
#' @title read_big_table
#' @name read_big_table
#' @param filename -- The path to the file you want to read.
#' @param header -- Boolean indicating if column names are in the file.
#' @param row.names -- Boolean indicating if row.names are in the file.
#' @param sep -- character used to separate fields in the file.
#' @param stringsAsFactors -- Boolean indicating if fields of unknown type should be treated like factors.
#' @return A data.frame with the contents of a tabular file.
#' @export
#' 
read_big_table <- function(filename, header=F, row.names=F, sep='\t', stringsAsFactors=F) {
	fp <- file(filename)
	big_table <- sqldf("select * from fp", dbname=tempfile(), 
			file.format=list(header=header, row.names=row.names, 
					sep=sep, drv = getOption("SQLite")))
	return(big_table)
}
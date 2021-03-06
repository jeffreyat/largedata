% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/read_big_table.R
\name{read_big_table}
\alias{read_big_table}
\title{read_big_table}
\usage{
read_big_table(filename, header = F, row.names = F, sep = "\\t",
  stringsAsFactors = F)
}
\arguments{
\item{filename}{-- The path to the file you want to read.}

\item{header}{-- Boolean indicating if column names are in the file.}

\item{row.names}{-- Boolean indicating if row.names are in the file.}

\item{sep}{-- character used to separate fields in the file.}

\item{stringsAsFactors}{-- Boolean indicating if fields of unknown type should be treated like factors.}
}
\value{
A data.frame with the contents of a tabular file.
}
\description{
Reads a text file into a data.frame faster than read.table for big files.
}
\details{
This function reads a file into an SQLite database temporarily, returns it
to a data.frame, and then unloads the database. This is many times faster than
read.table for big data.
}


\docType{data}
\name{msd16s}
\alias{msd16s}
\title{Curated dataset of many healthy and moderate-to-severe diarretic gut 16s samples on the 454 FLEX platform.}
\description{
  Data used in 'Diarrhea in young children from low-income countries leads to large-scale alterations in intestinal microbiota composition'. Measurements are number of reads annotated for a particular cluster within a given sample followed by filtering. Sequencing was performed on the 454 Flex platform.
}
\section{format}{
  Data is stored as an \code{\link{MRexperiment-class}} object. Using \code{MRcounts} one can obtain the 16S count matrix produced using using DNAclust (http://dnaclust.sourceforge.net/). The
  \code{pData} function accesses a data frame with the
  following columns: \describe{
  \item{\code{Type}:}{Status of samples: Case, Control}
  \item{\code{Country}:}{Country of origin}
  \item{\code{Age}:}{Month}
  \item{\code{AgeFactor}:}{Month group}
  \item{\code{Dysentery}:}{Dysentteric (1) non-dysenterric (0) indicator}
  }
  The
  \code{fData} function accesses a data frame with the
  following columns: \describe{
  \item{\code{OTU}:}{OTU cluster id}
  \item{\code{Taxonomy}:}{Full taxonomic profile}
  \item{\code{superkingdom}:}{superkingdom}
  \item{\code{phylum}:}{phylum}
  \item{\code{class}:}{class}
  \item{\code{order}:}{order}
  \item{\code{family}:}{family}
  \item{\code{genus}:}{genus}
  \item{\code{species}:}{species}
  \item{\code{clusterCenter}:}{The OTU cluster's representative sequence}
  }
}
\examples{
data(msd16s)
head(pData(msd16s))
head(fData(msd16s))
}
\author{
  Joseph N. Paulson
}
\references{
 'Diarrhea in young children from low-income countries leads to large-scale alterations in intestinal microbiota composition'
}
\seealso{
  \code{\link{MRexperiment-class}} for the class definition,
  \code{\link[metagenomeSeq]{cumNorm}} to
  normalize the counts.
}
\keyword{datasets}


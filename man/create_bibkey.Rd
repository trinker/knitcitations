\name{create_bibkey}
\alias{create_bibkey}
\title{generate bibkeys for unamed bibentry objects}
\usage{
  create_bibkey(bibentry, key = NULL, current = NULL)
}
\arguments{
  \item{bibentry}{a bibentry object without a bibkey}

  \item{key}{the key to use as the bibkey. Defaults to
  NULL, in which case the function constructs its own key
  using LastNameYear format (from first author).}

  \item{current}{a list of currently existing citations,
  such as the output from 'bibliography()', which will
  force 'create_bibkey' to generate a unique pattern.}
}
\value{
  an updated bibentry that now has a key value and is named
  using its key
}
\description{
  create_bibkey generates a key using a LastNameYear format
  or given key.
}
\examples{
r <- ref("10.3998/3336451.0009.101")
 print(r, "Bibtex")
 r <- knitcitations:::create_bibkey(r)
## Notice it now has a key entry
 print(r, "Bibtex")
}
\keyword{internal}


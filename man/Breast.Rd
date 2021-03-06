\name{Breast}
\docType{data}
\alias{Breast}
\title{Early breast cancer data}
\description{
  \code{Breast} contains clinical and genomic data of 614 early breast cancer patients.
}

\usage{data(Breast)}
\format{A dataframe with variables:
    \describe{
      \item{time}{Distant-relapse free survival time (in years).}
      \item{status}{Distant-relapse free survival indicator (0 = censored, 1 = event).}
      \item{treat}{Treatment arm (Anthracycline-based adjuvant chemotherapy with (treat = +0.5) or without (treat = -0.5) taxane).}
      \item{...}{All other covariates (p=1689) are gene expression values.}
    }
}
\references{
  Desmedt C, Di Leo A, de Azambuja E, Larsimont D, Haibe-Kains B et al.
    Multifactorial approach to predicting resistance to anthracyclines
    \emph{Journal of Clinical Oncology} 2011;29:1578-86.
    doi:\href{http://ascopubs.org/doi/full/10.1200/jco.2010.31.2231}{10.1200/JCO.2010.31.2231}\cr
  Hatzis C, Pusztai L, Valero V, Booser DJ, Esserman L et al.
    A genomic predictor of response and survival following
    taxane-anthracycline chemotherapy for invasive breast cancer.
    \emph{Journal of the American Medical Association} 2011;305:1873-1881.
    doi:\href{http://jamanetwork.com/journals/jama/fullarticle/899864}{10.1001/jama.2011.593}\cr
  Ternes N, Rotolo F, Heinze G and Michiels S.
    Identification of biomarker-by-treatment interactions in randomized
    clinical trials with survival outcomes and high-dimensional spaces.
    \emph{Biometrical journal}. In press.
    doi:\href{http://onlinelibrary.wiley.com/doi/10.1002/bimj.201500234/abstract}{10.1002/bimj.201500234}
}

\examples{
  library(survival)
  data(Breast)
  dim(Breast)
  
  km <- survfit(Surv(time, status) ~ treat, data = Breast)
  km
  plot(km, col = c("black", "red"), lwd = 2, xlim = c(0, 5), xaxt = "n", yaxt = "n")
  legend("bottomleft", legend = c("Control", "Experimental"), col = 1:2, 
    lty = 1, lwd = 2, cex = 1.5)
  axis(1, cex.axis = 1.3)
  axis(2, las = 2, cex.axis = 1.3)
  mtext("Distant-recurrence free survival", side = 2, line = 3.2, cex = 1.5)
  mtext("Time (in years)", side = 1, line = 2.5, cex = 1.5)
}

\keyword{dataset}
\keyword{breast}
\keyword{cancer}
\keyword{surrogate}



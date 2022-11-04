#' filterFASTAbyBase
#' @description Subset a FASTA file with multiple sequences based on the frequency of an specific base.
#' @param seq DNAString object from BioString
#' @param base Base or Bases used to filter (eg. G or GC or GCC)
#' @param prob Frequency percentage (TRUE) or exact count (FALSE)
#' @param cutoff Maximum frequency allowed. All sequences below this threshold will be removed.
#' @import Biostrings
#' @return DNAString
#' @export
#'
#' @examples
#' dir <-system.file("extdata", package="metavirus")
#' seq <- FASTA2DNAstring(file.path(dir, "sequences.fasta"))
#' subset <- filterFASTAbyBase(seq, "A", TRUE, 0.3)
#' 
filterFASTAbyBase <- function(seq, base, prob, cutoff){
  if (typeof(prob) != "logical" || typeof(base) != "character" || typeof(cutoff) != "double"){
    stop("Fix the parameters")}
  df <- cbind(seq@ranges@NAMES, letterFrequency(seq, base, as.prob=prob))
  df <- as.data.frame(df)
  colnames(df) <- c("RefSeqIds", "baseFrequency")
  subsequences <- subset(df, df$baseFrequency <= cutoff)
  subset <- seq[subsequences$RefSeqIds]
  return(subset)
}
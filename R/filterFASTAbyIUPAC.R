#' filterFASTAbyIUPAC 
#' @description Subset an FASTA file based on IUPAC bases percentages (eg. other bases rather than A,C,G, or T)
#' @param seq DNAString object
#' @param prob Frequency percentage (TRUE) or exact count (FALSE)
#' @param cutoff Maximum frequency allowed. All sequences below this threshold will be removed.
#' @param replace Replace remaining IUPAC bases with N (TRUE or FALSE)
#' @import Biostrings
#' @return DNAString
#' @export
#'
#' @examples
#' dir <-system.file("extdata", package="metavirus")
#' seq <- FASTA2DNAstring(file.path(dir, "sequences.fasta"))
#' subset <- filterFASTAbyIUPAC(seq, TRUE, 0.3, FALSE)
#' 
filterFASTAbyIUPAC <- function(seq, prob, cutoff, replace){
    if (typeof(prob) != "logical" || typeof(cutoff) != "double"){
        stop("Fix the parameters")}
    df <- cbind(seq@ranges@NAMES, alphabetFrequency(seq, baseOnly=TRUE, as.prob=prob))
    df <- as.data.frame(df)
    colnames(df) <- c("RefSeqIds", "A", "C", "G", "T", "other")
    subsequences <- subset(df, df$other <= cutoff)
    subset <- seq[subsequences$RefSeqIds]
    
    if (replace == "TRUE"){
        subset <- replaceAmbiguities(subset, new="N")}

    return(subset)
}
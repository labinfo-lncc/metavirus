#' SEQsStatsReport
#' @description Compile basic info about sequences
#' @param seq DNAString object
#'
#' @return dataframe
#' @export
#' @import Biostrings
#' @examples
#' dir <-system.file("extdata", package="metavirus")
#' seq <- FASTA2DNAstring(file.path(dir, "sequences.fasta"))
#' subset <- SEQsStatsReport(seq)
#' 
SEQsStatsReport <- function(seq){
    if (typeof(seq) !="S4"){
        stop("Fix the parameters")}
    df <- as.data.frame(seq@ranges@width,seq@ranges@NAMES)
    baseFrequency <- alphabetFrequency(seq)
    df <- cbind(df, baseFrequency)
    RefSeqId <- rownames(df)
    rownames(df) <- NULL
    df <- cbind(RefSeqId,df)
    names(df)[2] <- "Width"
    return(df)
}
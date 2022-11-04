#' filterFASTAbyLength
#' @description Subset sequences based on length
#' @param seq DNAString object
#' @param min Minimum length
#' @param max Maximum length
#' @import Biostrings
#' @return DNAString object
#' @export
#'
#' @examples
#' dir <-system.file("extdata", package="metavirus")
#' seq <- FASTA2DNAstring(file.path(dir, "sequences.fasta"))
#' subset <- filterFASTAbyLength(seq, 0, 1200)
#' 
filterFASTAbyLength = function(seq, min, max){
    if (typeof(min) !="double" || typeof(max)!= "double"){
        stop("Fix the parameters")}
    subsequences <- subset(as.data.frame(seq@ranges@width,seq@ranges@NAMES), seq@ranges@width >= min & seq@ranges@width <= max)
    RefSeqIds <- rownames(subsequences)
    return(seq[RefSeqIds])
}
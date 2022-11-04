#' FASTA2DNAstring
#' @description Makes an DNAString object from an FASTA file
#' @param file FASTA file
#' @import Biostrings
#' @return DNAString object
#' @export
#'
#' @examples
#' dir <-system.file("extdata", package="metavirus")
#' seq <- FASTA2DNAstring(file.path(dir, "sequences.fasta"))
#' 
FASTA2DNAstring <- function(file){
    if (!file.exists(file)) {
        stop("The file does not exists")}
    seq = readDNAStringSet(file)
    return(seq)
}
#' The virtual x-start of the full length seq in the plot
#'
#' Together with the seq strand, this is sufficient to project features
anchor <- function(x, start, strand){
  x - (start-1) * strand_int(strand)
}

#' Project feature coordinates into layout space
#'
#' @param seq_anchor the virtual x-start of the full length sequence in plot
#' space
x <- function(start, end, strand, seq_x, seq_start, seq_strand){
  a <- anchor(seq_x, seq_start, seq_strand)
  b <- if_reverse(strand, end, start-1)
  a + b * strand_int(seq_strand)
}

#' @rdname x
xend <- function(start, end, strand, seq_x, seq_start, seq_strand){
  a <- anchor(seq_x, seq_start, seq_strand)
  b <- if_reverse(strand, start-1, end)#, end + width(start,end))
  a + b * strand_int(seq_strand)
}

#' @export
#' @title List All Available Stability Measures
#' @description Lists all stability measures of package \emph{stabm} and
#' provides information about them.
#' @return \code{data.frame} \cr
#' For each stability measure, its name,
#' the information, whether it is corrected for chance by definition,
#' the information, whether it is adjusted for similar features,
#' its minimal value and its maximal value are displayed.
#' @section Note: The given minimal values might only be reachable
#' in some scenarios, e.g. if the feature sets have a certain size.
#' The measures which are not corrected for chance by definition can
#' be corrected for chance with \code{correction.for.chance}.
#' This however changes the minimal value.
#' For the adjusted stability measures, the minimal value depends
#' on the similarity structure.
listStabilityMeasures = function() {
  l = list(
    data.frame(Name = "stabilityDavis", Corrected = FALSE, Adjusted = FALSE,
      Minimum = 0, Maximum = 1, stringsAsFactors = FALSE),
    list("stabilityDice", FALSE, FALSE, 0, 1),
    list("stabilityHamming", FALSE, FALSE, 0, 1),
    list("stabilityIntersectionCount", TRUE, TRUE, NA, 1),
    list("stabilityIntersectionGreedy", TRUE, TRUE, NA, 1),
    list("stabilityIntersectionMBM", TRUE, TRUE, NA, 1),
    list("stabilityIntersectionMean", TRUE, TRUE, NA, 1),
    list("stabilityJaccard", FALSE, FALSE, 0, 1),
    list("stabilityKappa", TRUE, FALSE, -1, 1),
    list("stabilityLustgarten", TRUE, FALSE, -1, 1),
    list("stabilityNogueira", TRUE, FALSE, -1, 1),
    list("stabilityNovovicova", FALSE, FALSE, 0, 1),
    list("stabilityOchiai", FALSE, FALSE, 0, 1),
    list("stabilityPhi", TRUE, FALSE, -1, 1),
    list("stabilitySechidis", FALSE, TRUE, NA, NA),
    list("stabilitySomol", TRUE, FALSE, 0, 1),
    list("stabilityUnadjusted", TRUE, FALSE, -1, 1),
    list("stabilityWald", TRUE, FALSE, "1-p", 1),
    list("stabilityYu", TRUE, TRUE, NA, 1),
    list("stabilityZucknick", FALSE, TRUE, 0, 1)
  )

  do.call(rbind, l)
}

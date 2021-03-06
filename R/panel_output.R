#' Panel output
#'
#' This function inserts a panel.  Normally used for confirmattion screens
#' @param inputId The input slot that will be used to access the value.
#' @param main_text Add the header for the panel
#' @param sub_text Add the main body of text for the panel
#' @keywords panel
#' @export
#' @examples
#' if (interactive()) {
#'   ui <- fluidPage(
#'     shinyGovukFrontend::header(
#'       main_text = "Example",
#'       secondary_text = "User Examples",
#'       logo="shinyGovukFrontend/images/moj_logo.png"),
#'     shinyGovukFrontend::gov_layout(size = "full",
#'       shinyGovukFrontend::panel_output(
#'         inputId = "panel1",
#'         main_text = "Application Complete",
#'         sub_text = "Thank you for submitting your application.  Your reference is xvsiq")
#'     ),
#'     shinyGovukFrontend::footer(full = TRUE)
#'   )
#'
#'   server <- function(input, output, session) {}
#'   shinyApp(ui = ui, server = server)
#' }

panel_output <- function(inputId, main_text, sub_text) {
  govPanel <- tags$div(class="govuk-panel govuk-panel--confirmation", id = inputId,
    tags$h1(main_text, class = "govuk-panel__title"),
    tags$div(HTML(sub_text), class = "govuk-panel__body")
  )
  attachDependency(govPanel)
}

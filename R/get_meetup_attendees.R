#' Get the attendees
#'
#' @param urlname The name of the group.
#' @param api_key Your api key.
#' @param event_id The id of the event.
#' @export
get_meetup_attendees <- function(urlname, api_key, event_id){
  api_url <- paste0(meetup_api_prefix(), urlname, "/events/", event_id, "/attendance")
#'
#' @examples
#' \dontrun{
#' urlname <- "rladies-san-francisco"
#' api_key <- Sys.getenv("rladies_api_key")
#' past_events <- get_events(urlname = "rladies-san-francisco",
#'                       api_key = api_key,
#'                       event_status = "past")
#' event_id <- past_events[[1]]$id
#' tes <- get_meetup_attendees(urlname, api_key, event_id)
#'}
#' @export
get_meetup_attendees <- function(urlname, api_key, event_id){
  meetup_api_prefix <- "https://api.meetup.com/"
  api_url <- paste0(meetup_api_prefix,
                    urlname,
                    "/events/",
                    event_id,
                    "/attendance")
  .fetch_results(api_url, api_key)
}






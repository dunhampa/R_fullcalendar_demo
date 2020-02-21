################
# This is an example of working fullcalendar.io with
# working binding with url
###############3

library(fullcalendarWidget)
# blank calendar of current month
fullcalendarWidget::fullcalendar()
# with events
fullcalendarWidget::fullcalendar(
  events = data.frame(
    id = 1:2,
    title = c("Event 1", "Test Event 2"),
    start = Sys.Date() + 0:1,
    end = Sys.Date() + 2:3,
    color = c("blue", "orange"),
    url = c("https://www.google.com", "https://www.google.com")
  ),
  options = list(header = list(
    left = "title",
    center = "",
    right = 'today prev,next'
  )),
  callbacks = list(
    eventClick = DT::JS(
      "function(info) {
    info.jsEvent.preventDefault(); // don't let the browser navigate

    if (info.event.url) {
      window.location.href(info.event.url);
    }
  }"
    )))
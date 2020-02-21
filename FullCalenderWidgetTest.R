library(fullcalendar)
data = data.frame(title = paste("Event", 1:3),
                  start = c("2017-03-01", "2017-03-01", "2017-03-15"),
                  end = c("2017-03-02", "2017-03-04", "2017-03-18"),
                  color = c("red", "blue", "green"))

fullcalendar(data)


% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Logging.R
\name{unregisterLogger}
\alias{unregisterLogger}
\title{Unregister a logger}
\usage{
unregisterLogger(x)
}
\arguments{
\item{x}{Can either be an integer (e.g. 2 to remove the second logger), the name of the logger, or
the logger object itself.}
}
\value{
Returns TRUE if the logger was removed.
}
\description{
Unregister a logger
}
\details{
Unregisters a logger from the logging system.
}
\examples{
appender <- createConsoleAppender(layout = layoutTimestamp)

logger <- createLogger(name = "SIMPLE",
                       threshold = "INFO",
                       appenders = list(appender))
registerLogger(logger)                      
logTrace("This event is below the threshold (INFO)")
logInfo("Hello world")                       
unregisterLogger("SIMPLE")                     
}

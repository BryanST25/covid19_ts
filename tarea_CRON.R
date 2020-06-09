library(taskscheduleR);
taskscheduleR:::taskschedulerAddin();
fichero <- "C:\\Users\\Ander\\Desktop\\Automatizar_mtcars.R";
taskscheduler_create(taskname = "mtcars", 
                     rscript = fichero,
                     schedule = "HOUR", 
                     starttime = format(Sys.time(), "%H:%M:%S"), 
                     startdate = format(Sys.time(), "%d/%m/%Y"));
#taskscheduler_stop
library(tidyverse)
library(lubridate)
petroleo.ts=ts(petroleo,start = 2013,frequency = 12)
petroleo.ts
plot(petroleo.ts)
precio.ts=ts(petroleo.ts[,1],start = 2013, frequency = 12)
precio.ts
plot(precio.ts)
exportaciones.ts=ts(petroleo.ts[,2],start = 2013, frequency = 12)
exportaciones.ts
plot(exportaciones.ts)

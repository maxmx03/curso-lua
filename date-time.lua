require "utils"

section "os.time"
local time = os.time()
local day_in_year = 365.242
local sec_in_hour = 60 * 60
local sec_in_day = sec_in_hour * 24
local sec_in_year = sec_in_day * day_in_year

local year = time // sec_in_year + 1970
write(string.format("Ano: %s", year))

local hour = time % sec_in_day // sec_in_hour
write(string.format("Hora: %s", hour))

local minutes = time % sec_in_hour // 60
write(string.format("Minute: %s", minutes))

local seconds = time % 60
write(string.format("Seconds: %s", seconds))

section "os.date"
local date = os.date("*t", os.time())

write(string.format("Year: %s", date.year))
write(string.format("Month: %s", date.month))
write(string.format("Day: %s", date.day))
write(string.format("Hour: %s", date.hour))
write(string.format("Minute: %s", date.min))
write(string.format("Seconds: %s", date.sec))

write(os.date("%H:%M:%S%p", os.time()))
write(os.date("%d/%m/%Y", os.time()))

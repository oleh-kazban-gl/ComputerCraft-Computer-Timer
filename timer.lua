--{program="Timer",version="1.00",date="2016-12-18"}
---------------------------------------
-- Timer                by CyberiX
-- 2016-12-18, v1.00   initial
---------------------------------------

---------------------------------------
---- DESCRIPTION ---------------------- 
---------------------------------------
-- Computer timer

function timer()
    local seconds = 0
    local minutes = 0
    local hours = 0

    local secondsDisplay = ''
    local minutesDisplay = ''
    local hoursDisplay = ''

    while true do
        seconds = seconds + 1

        if seconds == 60 then
            minutes = minutes + 1
            seconds = 0
        end

        if minutes == 60 then
            hours = hours + 1
            minutes = 0
        end

        if seconds < 10 then
            secondsDisplay = '0' .. seconds
        else
            secondsDisplay = seconds
        end

        if minutes < 10 then
            minutesDisplay = '0' .. minutes
        else
            minutesDisplay = minutes
        end

        if hours < 10 then
            hoursDisplay = '0' .. hours
        else
            hoursDisplay = hours
        end

        print(hoursDisplay .. ' : ' .. minutesDisplay .. ' : ' .. secondsDisplay)

         sleep(1)
    end
end

timer()

-- Pastebin ID: A2DUd3gz
%dw 2.0
output application/json
var myDate = now()
---
[{
    /** Format Date and Time */
    formattedDate: |2020-10-01T23:57:59| as String {format: "uuuu-MM-dd"},
	formattedTime: |2020-10-01T23:57:59| as String {format: "KK:mm:ss a"},
	formattedDateTime: |2020-10-01T23:57:59| as String {format: "KK:mm:ss a, MMMM dd, uuuu"},
	date1: |2020-10-01T23:57:59| as String {format: 'dd/MM/uuuu'},
	date2: |2020-10-01T23:57:59| as String {format: 'dd MMMM uuuu'}
},
{
    currentDateTime: myDate, 
    year: myDate.year,
    month: myDate.month,
    day: myDate.day, 
    hour: myDate.hour, 
    minutes: myDate.minutes, 
    seconds: myDate.seconds,
    milliseconds: myDate.milliseconds, 
    nanoseconds:myDate.nanoseconds, 
    quarter: myDate.quarter, 
    dayOfweek: myDate.dayOfWeek, 
    dayofYear: myDate.dayOfYear, 
    offsetSeconds: myDate.offsetSeconds,
},
{
	date1: |2023-10-03| as String {format: 'dd/MM/uuuu'},
    date2: |2023-10-03| as String {format: 'MM/dd/uuuu'},
    date3: |2023-10-03| as String {format: 'uuuu/MM/dd'},

    Date1: |2023-10-03| as String {format: 'dd-MM-uuuu'},
    Date2: |2023-10-03| as String {format: 'MM-dd-uuuu'},
    Date3: |2023-10-03| as String {format: 'uuuu-MM-dd'},

	DATE: |2023-10-03| as String {format: 'dd MM uuuu'},
    DATE: |2023-10-03| as String {format: 'MM dd uuuu'},
    DATE: |2023-10-03| as String {format: 'uuuu MM dd'},
},
{
    /** Add or Substract Time */
    currentTime: myDate,
    // Adding Year
    nextYear: myDate + |P1Y|,
    // Adding Month
    nextMonth: myDate + |P1M|,
    // Adding 1 Hr
    nextHour: myDate + |PT1H|,
    //Substract 1 Year
    Substract1Year: myDate - |P1Y|
    
}
]
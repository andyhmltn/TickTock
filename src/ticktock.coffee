format_number = (number) -> if number < 10 then "0" + number else number 
get_time = ->
	x    = {}

	for time in ['Hours', 'Minutes', 'Seconds']
		x[time] = format_number(new Date()["get#{time}"]())

	"#{x.Hours}:#{x.Minutes}:#{x.Seconds}"

Element.prototype.TickTock = () ->
	me = @;

	me.innerHTML = do get_time

	setInterval (-> me.innerHTML = (do get_time)), 1000

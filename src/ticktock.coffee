format_number = (number) -> if number < 10 then "0" + number else number 
get_time = ->
	date = new Date

	hrs  = format_number do date.getHours
	mins = format_number do date.getMinutes
	secs = format_number do date.getSeconds

	"#{hrs}:#{mins}:#{secs}"

Element.prototype.TickTock = () ->
	me = this;

	me.innerHTML = do get_time

	setInterval (-> me.innerHTML = (do get_time)), 1000
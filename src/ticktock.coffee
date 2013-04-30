get_time = ->
	date = new Date

	hrs  = do date.getHours
	mins = do date.getMinutes
	secs = do date.getSeconds
	
	hrs  = if hrs < 10  then "0" + hrs  else hrs
	mins = if mins < 10 then "0" + mins else mins
	secs = if secs < 10 then "0" + secs else secs

	"#{hrs}:#{mins}:#{secs}"

Element.prototype.TickTock = () ->
	me = this;

	me.innerHTML = do get_time

	setInterval (-> me.innerHTML = (do get_time)), 1000
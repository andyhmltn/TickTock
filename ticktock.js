(function() {
  var format_number = function(number) { return number < 10 ? "0" + number : number; }
  var get_time = function() {
    var periods  = ["Hours","Minutes","Seconds"];
    var returned = {}; 
    for(i=0; i<periods.length; i++) {
        returned[periods[i]] = format_number(new Date()["get"+periods[i]]());
    }
    return returned["Hours"]+":"+returned["Minutes"]+":"+returned["Seconds"];
  };
  Element.prototype.TickTock = function() {
    var me = this;
    me.innerHTML = get_time();
    return setInterval((function() {
      me.innerHTML = get_time()
;    }), 100);
  }
}).call(this);
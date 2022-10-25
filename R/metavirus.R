# S4 class pattern for metavirus
setClass ("Metavirus", slots=list(virusname="character", taxid="numeric"))

# Methods

setMethod ("virusstats", "Metavirus",
	   function (obj){
	   	cat (obj@taxid)
	   }
)


package productdonation

class Agreement {
	String content
	String tag
    static constraints = {
		content blank:false, nullable:false
		tag blank:false, nullable:false, inList:["Usuario", "Hoy por ti"]
    }
}

package productdonation

class Score {
	static belongsTo=[product:Product]
	int score
	String tag
    static constraints = {
		score nullable:false
		tag nullable:false, inList:["usuario","Hoy por ti"]
    }
	static mapping={
		score defaultValue:0
	}
}

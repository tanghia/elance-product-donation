package productdonation

class Answer {
	static belongsTo=[question:Question]
	String answer
	int score
    static constraints = {
		answer blank:false, nullable:false
		score blank:false, nullable:false
    }
}

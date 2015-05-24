package productdonation

class Answer {
	static belongsTo=[question:Question]
	String answer
	int score
    static constraints = {
		answer blank:false, nullable:false
		score blank:false, nullable:false
    }
	
	@Override
	public String toString() {
		return answer+" has score "+score
	}
}

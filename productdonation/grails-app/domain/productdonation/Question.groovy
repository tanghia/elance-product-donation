package productdonation

class Question {
	static hasMany=[answers:Answer]
	String name
	String type
    static constraints = {
		name blank:false, nullable:false
		type blank:false, nullable:false, inList:["textbox","listbox"]
    }
}

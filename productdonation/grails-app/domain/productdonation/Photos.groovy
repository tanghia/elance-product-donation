package productdonation

class Photos {
	static belongsTo =[product:Product]
	byte[] photo
    static constraints = {
		photo blank:false,nullable:false, maxSize:1073741824
    }
}

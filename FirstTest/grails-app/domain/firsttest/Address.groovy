package firsttest

class Address {

    static constraints = {
    }
	String city
	String state
	String pin
	static belongsTo = [employee:Employee]
}
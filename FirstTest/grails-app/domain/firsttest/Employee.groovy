package firsttest

class Employee {

    static constraints = {
    }
	
	String firstName
	String lastName
	Double salery
	static hasMany = [addresses:Address]
	
	 String toString() {
		firstName+" "+lastName
	}
}

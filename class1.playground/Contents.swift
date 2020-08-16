import UIKit

struct PersonStruct {
    var firstName:String
    var lastName:String
    
    var fullName:String {
        return "\(firstName) \(lastName)"
    }
    
    mutating func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
}

class PersonClass {
    
    var firstName: String
    var lastName: String
    
    //초기화 프로퍼티의 값이 설정되어 있지 않음
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    var fullName:String {
        return "\(firstName) \(lastName)"
    }
    
    func uppercaseName() {
        firstName = firstName.uppercased()
        lastName = lastName.uppercased()
    }
    
}

var personStruct1 = PersonStruct(firstName: "Liam", lastName: "Liaam")
var personStruct2 = personStruct1

var personClass1 = PersonClass(firstName: "Liam", lastName: "Liaam")
var personClass2 = personClass1


//각자 가지고 있음
personStruct2.firstName = "Liam"
personStruct1.firstName
personStruct2.firstName


//같은 곳을 바라봄
personClass2.firstName = "Liam"
personClass1.firstName
personClass2.firstName





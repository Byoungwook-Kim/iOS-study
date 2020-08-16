import UIKit


struct Lecture {
    var title : String
    var maxStudents:Int = 10
    var numOfRegistered:Int = 0
    
    func remainSeats()-> Int {
        let remainSeats = lec.maxStudents - lec.numOfRegistered
        return remainSeats
    }
    
    mutating func register() {
        //등록된 학생 수 증가시키기
        numOfRegistered += 1
    }
    
    static let target: String = "Liam"
}

var lec = Lecture(title: "iOS Basic")

lec.remainSeats()

lec.register()
lec.register()
lec.register()

Lecture.target

struct Math {
    static func abs(value: Int) -> Int {
        if value > 0 {
            return value
        } else {
            return -value
        }
    }
}

Math.abs(value: -20)

extension Math {
    static func sqaure(value: Int) -> Int {
        return value * value
    }
    
    static func half(value: Int) -> Int {
        return value/2
    }
}

var value:Int = 10

extension Int {
    func square() -> Int {
        return self * self
    }
    
    func half() -> Int {
        return self/2
    }
}

value.square()
value.half()



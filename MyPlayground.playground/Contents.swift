import UIKit

var carName: String? // 아직은 무언가를 할당하지 않음
carName = nil // 값이 없음을 표현
carName = "테슬라"

var favoriteMoiveStar: String? = nil // 좋아하는 영화배우가 없어요
let num = Int("10")

carName = nil // 값이 없는 상태 -> 값을 가져왔지만 없기 떄문에 오류가 발생함
//print(carName!) // 옵셔널 값을 해제하고 값만 가져옴 -> 값이 있는 경우에만 사용해야함

//오류처리를 하면서 unwrapping 하는 방법
if let unwrappedCarName = carName {
    print(unwrappedCarName)
} else {
    print("carname이 없다")
}

//func printParseInt(from: String){
//    if let pardeInt = Int(from) {
//        print(pardeInt)
//    } else {
//        print("Int로 컨버팅 안됩니다")
//    }
//}
//
//printParseInt(from: "리암")

func printParseInt(from: String) {
    guard let parseInet = Int(from) else {
        print("Int로 컨버팅 안됩니다")
        return
    }
    print(parseInet)
}

carName = "모델 S"
let myCarName: String = carName ?? "모델 S" //carName이 값이 없으면 모델 S를 디폴트로 설정



let favoriteFood: String? = nil

if let foodName = favoriteFood {
    print(foodName)
} else {
    print("없음")
}


func printNickName(name: String?) {
    guard let nickName = name else {
        print("생성해야함")
        return
    }
    
    print(nickName)
}

printNickName(name: nil)

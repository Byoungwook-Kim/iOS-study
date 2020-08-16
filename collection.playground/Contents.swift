import UIKit

//Array에 담는 타입은 모두 같아야 한다.
//익덱스는 0번부터 시작하여 0,1,2,3
//순서가 있는 아이템
//아이템의 순서를 알면 유용할때

var evenNumers:[Int] = [2, 4, 6, 8]
//let evenNumers:Array<Int> = [2, 4, 6, 8]

evenNumers.append(10)
//10을 추가
evenNumers += [12,14,16]
evenNumers.append(contentsOf: [18, 20])

//evenNumers = []

let isEmpty = evenNumers.isEmpty
//비어있는지 확인, 비어있다면 true 반환

evenNumers.count
//개수를 확인

print(evenNumers.first)
//옵셔널로 반환됨, 값이 없기 때문에 옵셔널로 반환됨

if let firestElement = evenNumers.first {
    print(firestElement)
} else {
  print("값이 없어요")
}

evenNumers.min()
//최소값을 확인
evenNumers.max()
//최대값을 확인

var firstItem = evenNumers[0]
var secondItem = evenNumers[1]
var tenthItem = evenNumers[9]

let firstThree = evenNumers[0...2]

evenNumers.contains(3)
//3이 들어있는지 확인

evenNumers.contains(4)
//4가 들어있는지 롹인

evenNumers.insert(0, at: 0)
evenNumers

//evenNumers.removeAll()
//모두 삭제

evenNumers.remove(at: 0)
evenNumers

evenNumers[0...2] = [-2, 0, 2]
evenNumers
//특정 인덱스의 값을 업데이트

evenNumers.swapAt(0, 9)
//순서를 바꿈

for num in evenNumers {
    print(num)
}

for (index, num) in evenNumers.enumerated() {
    print("idx: \(index), value \(num)")
}

//인덱스 값을 가져와서 값을 보여줌

evenNumers.dropFirst(3)
evenNumers

//앞에서 3개 제외하고 출력

    








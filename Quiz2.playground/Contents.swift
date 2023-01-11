import UIKit

protocol AnimalProtocol{
    func crying() -> String
}

class Animal:AnimalProtocol{
    func crying() -> String {
        return "동물 울음소리"
    }
}

class Dog:Animal{
    override func crying() -> String {
        return "멍멍"
    }
    
    deinit {
        print("객체 소멸")
    }
}

class Cat:Animal{
    override func crying() -> String {
        return "애옹"
    }
}

class Pigeon:Animal{
    override func crying() -> String {
        return "구구"
    }
}

class WildCat:Animal{
    override func crying() -> String {
        return "그르릉"
    }
}

 //0: Dog, 1:Cat, 2:Pigeon 3:WildCat
var randNum: Int = Int.random(in: 0...3);
var animal:Animal? = Animal()
    
switch randNum{
case 0:
    animal = Animal() as? Dog //업캐스팅 -> 다운캐스팅
case 1:
    animal = Animal() as? Cat
case 2:
    animal = Animal() as? Pigeon
case 3:
    animal = Animal() as? WildCat
default:
    animal
}
    
if(animal is Dog){
    print("강아지 출입 시도")
    print("강아지는 출입 불가")
}
else if(animal is Pigeon){
    print("비둘기 출입 시도")
    print("비둘기는 출입 불가")
}
else if(animal is WildCat){
    print("삵 등장")
    print("멸종위기종을 신고하자")
}
else if(animal is Cat){
    let eatFruit: (String) -> Void = { (fruit:String) -> Void in
        print("\(fruit)를 먹었다.")
    }
    
    randNum = Int.random(in: 0...3); //0:망고스틴 1:수박 2:딸기 3:포도
    print("고양이가 들어왔다!")
    
    
    animal?.crying()
    
    switch randNum{
    case 0:
        print("이용이용")
        print("고양이를 쫓아내자")
    case 1: eatFruit("수박")
    case 2: eatFruit("딸기")
    case 3: eatFruit("포도")
    default:
        print("")
    }
    
    print("고양이가 밖으로 나갔다.")
    
    animal = nil

}



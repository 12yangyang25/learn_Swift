import SwiftUI

//1.구조체(값 타입)

struct Sample{ //구조체 정의
    var mutablePr: Int = 100 //가변
    var immutablePr: Int = 100 //불변 => 상수
    
    static var typePr: Int = 00 //구조체 타입 자체가 사용하는 프로퍼티, 인스턴스의 프로퍼티 X
    
    func instanceMethod(){ //개별 인스턴스가 사용하는 메소드
        print("instacne")
    }
    
    static func typeMethod(){ //구조체 타입 자체가 사용하는 메소드
        print("type")
    }
}

var mutable : Sample = Sample() //가변 인스턴스로 생성
let immutable : Sample = Sample() //불변 인스턴스로 생성

mutable.mutablePr = 200 //가능
//immutable.mutablePr = 200 불변 인스턴스로 생성할 경우 가변 프로퍼티여도 업데이트 불가

//mutable.typePr 불가
Sample.typePr = 200

mutable.instanceMethod() //인스턴스 메소드
Sample.typeMethod() //타입 자체가 사용하는 메소드



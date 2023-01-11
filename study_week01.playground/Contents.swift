import UIKit
// 02-11

//상수 선언
let constant:String = "문자열"
//변수 선언
var variable:String = "문자열" //이 때 값의 타입이 명확하다면 타입 생략 가능

print(constant)
dump(variable) //description 프로퍼티까지 출력

let sum:Int //초기화 안하고 선언만 할 시에는 반드시 타입 명시, 값 할당 후 변경 불가


/* Swif의 기본 데이터타입*/

var boolEx: Bool = true

var intEx:Int = 3
var uintEx:UInt = 100 //64비트 양의 정수형

var floatEx:Float = 3.14 //32비트 실수타입
var doubleEx:Double = 3.14 //64비트 실수타입

var charEx:Character = "🤩" //문자열 할당시 컴파일 오류
var strEx:String = "문자열"



var anyEx:Any = "모든 타입을 지칭하는 키워드"
//strEx = anyEx //컴파일 오류 발생. Any는 String 타입이 아니기 때문에 명시적으로 타입을 변환해 주어야 함

class classEx {}
var anyObjectEx:AnyObject = classEx() //클래스의 인스턴스를 수용



/* 컬렉션 타입 */

//1. Array => 멤버가 순서(인덱스)를 가진 리스트 형태의 타입, 표현이 다양함
var ints:Array<Int> = Array<Int> ()
// Array<Int> = [Int]()
// Array<Int> = []
// [Int] = Array<Int>
// 타입 명시 하지 않고 = [Int]()도 가능

//2. Dictionary => 키와 쌍으로 이루어진 컬렉션 타입
var dictEx: Dictionary<String, Any> = [String: Any] ()
// [:] 가능

dictEx["keyEx"] = "value"
print(dictEx)

// 3. Set => 중복되지 않는 멤버가 순서 없이 존재하는 컬렉션
//멤버의 유일성이 보장되기 때문에 집합 연산에 유리
var intSet:Set<Int> = Set<Int> ()

intSet.insert(3)
intSet.insert(3)
intSet.insert(3) //중복값 여러번 insert해도 한번만 저장됨
print(intSet)




/* 함수 */

func sum(a: Int, b:Int) -> Int { //형식: func 함수 이름(매개변수 이름:타입) -> 반환 타입 {}
    return a + b
}

//반환 값이 없는 경우, -> void 혹은 생략 가능
//매개변수가 없는 경우 func 함수이름() -> 반환 타입 {}

//호출
print(sum(a: 3, b: 5))

//매개변수 기본 값 => 기본적으로 전달될 값을 미리 지정, 매개변수 목록 중 뒤쪽에 위치하는 것이 좋음
func greeting(friend: String, me:String = "DDIONG"){
    print("Hello \(friend)! I'm \(me)")
}

greeting(friend: "Gomdol") //기본값을 가지는 매개변수는 호출시 생략 가능

//전달인자 레이블: 동일한 이름의 함수를 중복으로 생성 가능

func greeting(to friend: String, from me:String) -> Void{
    print("Hello \(friend)! I'm \(me)") //함수 내부에서는 매개변수 이름을 사용
}

greeting(to: "Gomdol", from: "DDIONG") //함수를 호출할 때에는 전달 인자 레이블을 사용

//가변 매개변수 => 전달 받을 값의 개수가 명확하지 않을 때 사용, 함수당 하나만 가질 수 있음. 목록 중 뒤쪽에 위치하도록
//형식: (매개변수 이름: 타입... )
func funcEx(me:String, friends: String...) -> String{
    return "Hello \(friends)! I'm \(me)"
}

print(funcEx(me: "DDIONG", friends: "Gomdol", "Moomin", "Siru")) //friends 매개 변수에 값이 3개 전달
print(funcEx(me: "DDIONG")) //friends 변수에 값이 0개 전달


//데이터 타입으로서의 함수
//스위프트의 함수는 객체이므로 함수를 변수, 상수 등에 할당이 가능하고 매개변수를 통해 전달할 수 있음
//반환 타입 생략 불가

//변수에 함수 할당
var someFunc:(String, String) -> Void = greeting(to:from:)
someFunc("DDIONG", "Gomdol")

//함수를 매개변수로 전달
func runAnother(paramFunc: (String, String) -> Void){
    paramFunc("jenny", "mike")
}

runAnother(paramFunc: greeting(to:from:))


/* 조건문 */

//1. if-else 구문 => if 뒤의 조건 값에는 Bool 타입의 값만 위치

if intEx < 100{
    print("100 미만")
}
else if intEx > 100{
    print("100 초과")
}
else{
    print("100")
}

//2. switch 구문
//정수 타입의 값만 비교하는 것이 아니라, 대부분의 스위프트 기본 타입을 지원함
//default 구문 반드시 작성
//명시적으로 break 하지 않아도 case 마다 break
//fallthrough 키워드를 사용하여 break를 무시 가능
//쉼표를 사용하여 하나의 case에 여러 패턴을 명시

switch intEx{
case 0:
    print("zero")
case 1..<5:
    print("1~4")
case 5..<10:
    print("5~9")
default:
    print("unknown")
}

switch "DDIONG"{
case "Gomdol":
    print("Gomdol")
case "Moomin":
    print("Moomin")
case "DDIONG":
    print("DDIONG")
default:
    print("unknown")
}


/* 반복문 */

//1. for-in 구문

var integers = [1, 2, 3]
for integer in integers {
    print(integer)
}

//2. while 구문

while(integers.count > 1) {
    integers.removeLast()
}

//3. repeat-while 구문 => do-while 구문과 형식 및 동작 유사

repeat {
    print(integers)
    integers.removeLast()
}while(integers.count) > 0


/* 옵셔널 */
// 값이 있을 수도, 없을 수도 있음을 표현
// nil이 할당 가능한지를 표현

func optionalEx(paramOptional: Int?){
    //paramOptional에 nil이 할당 될 수 있음
    //그냥 Int일 경우 nil 할당 불가
}

//전달받은 값이 옵셔널이 아니라면, nil 체크 할 필요 없이 사용 가능
//예외 사항을 최소화

let optionalValue: Optional<Int> = nil //혹은 : Int? = nil

//1. 느낌표를 이용한 암시적 추출 옵셔널

var implicitlyOptionalValue: Int! = 100

switch implicitlyOptionalValue {
case .none:
    print("Optional variable is nil")
case .some(let value):
    print("Value is \(value)")
}

implicitlyOptionalValue += 1 //기존 변수처럼 사용 가능
implicitlyOptionalValue = nil //nil 할당 가능
// implicitlyOptionalValue += 1  => 런타임 오류 발생, 위에서 nil값을 할당해 주었기 때문에 잘못된 접근


//2. 물음표를 이용한 옵셔널(일반적인 옵셔널타입)

var optionalValueEx: Int? = 100 //일반적인 옵셔널, Int값이 있을 수도 없을 수도를 표현
//optionalValueEx += 1 기존 변수처럼 사용 불가, 일반 값과 옵셔널은 다른 타입이므로 연산 불가능
optionalValueEx = nil //할당 가능


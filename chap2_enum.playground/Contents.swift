import Swift


//tip: 자동 포맷팅 => cntl+I


//유사한 종류의 여러 값을 한 곳에 모아서 정의한 것
//enum의 각 case는 그 자체가 고유한 값으로 취급(정수 값 할당 X)
//하나의 case 한 줄에 여러 개 정의 가능

enum Week{
    case mon
    case tue
    case wed
    case thu
    case fri
    case sat, sun
}

var day:Week = Week.mon

switch day{ //스위치문 활용
case .mon:
    print("월요일 싫어")
    
default:
    print("퇴근 할래")
}

enum thisWeek:Int { //int 타입 말고 string 등 다양한 타입 원시값으로 지정 가능
    case mon = 8 //원시값 지정
    case tue //자동으로 +1 값이 할당
    case wed
    case thu
    case fri
}

print(thisWeek.thu.rawValue) //원시값 참조

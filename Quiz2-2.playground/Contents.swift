class Lecture{
    var lectureName:String = String();
    
    init(name:String){
        lectureName = name;
    }
}

class Study{
    var location:String = String();
    
    init(whereIs:String){
        location = whereIs;
    }
}

class Meeting{
    var friendName:String = String();
    var phoneNumber:String?
    
    init(name:String, number:String?){
        friendName = name;
        phoneNumber = number;
    }
}

class Day{
    var lecture:Lecture?
    var study:Study?
    var meeting:Meeting?
    
    func printTodayList(day:String){
        print(day + ":");
        
        if let lectureName = lecture?.lectureName {
            print("\(lectureName) 수업이 있습니다.");
        }
        
        if let location = study?.location {
            print("\(location)에서 스터디가 있습니다.");
        }
        
        if let friendName = meeting?.friendName {
            print("\(friendName)(\(meeting?.phoneNumber))와 약속이 있습니다.");
        }
        
        print("");
    }
}

class Week{
    var mon:Day = Day();
    var tue:Day = Day();
    var wed:Day = Day();
    var thu:Day = Day();
    var fri:Day = Day();
    var sat:Day = Day();
    var sun:Day = Day();
    
    func printWeekList(){
        nov2nd.mon.printTodayList(day: "mon");
        nov2nd.tue.printTodayList(day: "tue");
        nov2nd.wed.printTodayList(day: "wed");
        nov2nd.thu.printTodayList(day: "thu");
        nov2nd.fri.printTodayList(day: "fri");
        nov2nd.sat.printTodayList(day: "sat");
        nov2nd.sun.printTodayList(day: "sun");
    }
}

var nov2nd:Week = Week();


nov2nd.mon.lecture = Lecture(name:"정보검색");
nov2nd.tue.study = Study(whereIs: "동방");
nov2nd.tue.meeting = Meeting(name: "김XX", number: "01012345678");
nov2nd.wed.lecture? = Lecture(name: "인공지능")
nov2nd.thu.meeting = Meeting(name: "양XX", number: "01000000000");
nov2nd.fri.lecture = Lecture(name:"산학프로젝트")
nov2nd.sun.meeting = Meeting(name: "나XX", number: nil);


nov2nd.printWeekList();

if nov2nd.thu.meeting != nil {
    print("바쁘다 바빠ㅠㅠ");
}else{
    nov2nd.thu.meeting = Meeting(name: "홍XX", number: "01011111111");
}

if nov2nd.sat.study != nil {
    print("바쁘다 바빠ㅠㅠ");

}else{
    nov2nd.sat.study = Study(whereIs: "동방");
}


print("일정 업데이트 완료");
nov2nd.printWeekList();

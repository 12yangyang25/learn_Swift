import Swift

class Sample{ //클래스 정의
    var mutablePr: Int = 100
    let immutablePr: Int = 100
    static var typePr: Int = 100
    //구조체와 유사
    
    //인스턴스 메서드
    func instanceMethod(){
        print("instance")
    }
    
    //타입메서드
    
    static func typeMethod(){ //상속시 재정의가 불가능한 타입 메서드
        print("재정의 불가능")
    }
    
    class func classMethod(){
        print("재정의 가능")
    }
    
    func refSelf(){ //self를 이용하여 참조 가능...인데 뭐가 다른거지
        print(self.mutablePr)
    }
    
    func refProperty(){
        print(mutablePr)
    }
    
    func updatePr(){
        mutablePr = 500
        self.mutablePr = 500 //뭐가 다른거지?!!!
    }
}

var mutableRef: Sample = Sample()
let immutableRef: Sample = Sample()
//이 때, 클래스는 참조 타입이므로 let으로 선언되었지만 가변 프로퍼티 값 변경이 가능함, 불변 프로퍼티는 여전히 불가능

immutableRef.refSelf()
immutableRef.refProperty()
immutableRef.mutablePr = 300
immutableRef.refSelf()
immutableRef.updatePr()
immutableRef.refProperty()

//immutableRef = mutableRef
//다른 인스턴스를 참조하돌고 변경하는 것은 불가능




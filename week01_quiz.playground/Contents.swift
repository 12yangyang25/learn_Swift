import UIKit

func drawLots() -> Any{
       
    let randomNum: Int = Int.random(in: 0...9)
    
    switch randomNum{
    case 0:
        return "우왕이 인형"
    
    case 1...5:
        return 5000
        
        
    case 5...7:
        return 10000
        
    case 7...9:
        return false
    
    default:
        return 0
        
    }
}

for _ in 0...2{
    let result:Any = drawLots()
    
    if (result is String){
        print(result, "당첨!")
    }
    else if(result is Int){
        print(result, "원 당첨!")
    }
    else{
        print("꽝..입니다")
    }
}




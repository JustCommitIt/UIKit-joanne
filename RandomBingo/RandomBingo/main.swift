//
//  main.swift
//  RandomBingo
//
//  Created by 김요한 on 2023/05/01.
//

import Foundation

var comChoiceNumber = Int.random(in: 1...100)
var myChoiceNumber: Int = 0

while true {
    
    var userInputNumber = readLine()
    
    if let input = userInputNumber {
        if let number = Int(input) {
            
            myChoiceNumber = number
            
        }
    }
    
    //print(myChoiceNumber)
    
    if comChoiceNumber > myChoiceNumber {
        print("Up")
    } else if comChoiceNumber < myChoiceNumber {
        print("Down")
    } else {
        print("Bingo")
        break // 반복문 종료
    }
    
}

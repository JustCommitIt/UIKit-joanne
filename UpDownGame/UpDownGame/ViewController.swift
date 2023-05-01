//
//  ViewController.swift
//  UpDownGame
//
//  Created by 김요한 on 2023/05/01.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    // 컴퓨터가 랜덤으로 숫자 선택
    var comNumber = Int.random(in: 1...10)
    
    // 내가 선택한 숫자를 담는 변수
//   ❤️ var myNumber: Int = 1
    
    
    // 앱의 화면에 들어오면 가장 처음에 실행 되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = "선택하세요"
        numberLabel.text = ""
    }
    
    // 숫자 버튼
    @IBAction func btnPressed(_ sender: UIButton) {
        // 1. 버튼의 숫자를 가져와야 함
        guard let numString = sender.currentTitle else { return }
        
        // 2. 숫자 레이블이 변하도록 (숫자에 따라)
        numberLabel.text = numString
        
        // 3. 선택한 숫자를 변수에 저장(선택사항) 문자열 -> 숫자로 변환한 다음 저장
//     ❤️   guard let num = Int(numString) else { return }
//        myNumber = num
    }
    
    
    @IBAction func selectBtnPressed(_ sender: UIButton) {
        // 또 다른 방법
        // 내가 선택한 숫자를 변수에 담지 않고, 넘버레이블에 표현된 값을 가지고 올수 있음
        // 옵셔널 벗기고
        guard let myNumberString = numberLabel.text else { return }
        // 타입 변환 (문자열 -> 정수)
        guard let myNumber = Int(myNumberString) else { return }
        
        
        
        
        
        
        // 1. 컴퓨터의 숫자와 내가 선택한 숫자를 비교하여 UP/Down/Bingo (mainLabel)
        if comNumber > myNumber {
            mainLabel.text = "UP"
        } else if comNumber < myNumber {
            mainLabel.text = "DOWN"
        } else {
            mainLabel.text = "BINGO😆"
        }
        
    }
    
    
    
    @IBAction func resetBtnPressed(_ sender: UIButton) {
        // 1. mainLabel 선택하세요 변경
        mainLabel.text = "선택하세요!"
        // 2. 컴퓨터의 랜점 숫자를 다시 선택하게.
        comNumber = Int.random(in: 1...10)
        // 3. 숫자 레이블을 "" 빈문자열로 세팅
        numberLabel.text = ""
        
    }
    
    
    
    
    
}


//
//  ViewController.swift
//  RPSGame
//
//  Created by 김요한 on 2023/04/30.
//

import UIKit

class ViewController: UIViewController {

    // 변수, 속성
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var comImageView: UIImageView!
    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var comChoiceLabel: UILabel!
    @IBOutlet weak var myChoiceLabel: UILabel!
    
    //데이터 저장을 위한 변수 (컴퓨터, 나의 선택)
    var comChoice: Rps = Rps(rawValue: Int.random(in: 0...2))!
    var myChoice: Rps = Rps(rawValue: Int.random(in: 0...2))!
   
    
    // 함수, 메서드
    // 앱 화면에 들어오면 처음 실행 되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        //1. 첫번째, 두번째 이미지뷰에 준비(묵) 이미지를 띄워야함
        comImageView.image = #imageLiteral(resourceName: "ready")
        myImageView.image = UIImage(named: "ready.png")
        
        //2. 첫번째, 두번째 레이블에 "준비"라고 문자열을 띄워야함
        comChoiceLabel.text = "준비"
        myChoiceLabel.text = "준비"
        
    }

    
    //함수 하나에 버튼 3개가 연결 되어있음
    @IBAction func rpsBtnTapped(_ sender: UIButton) {
        // 가위,바위,보를 선택해서 그 정보를 저장해야 함. -> enum Rps로 만들어둠
        
// // currentTitle이 옵셔널타입이라 바인딩 해주어야하지만 여기선 nil값이 없는 상태라 안함
//        guard let title = sender.currentTitle else { return }
//      print(title)
        
        //버튼의 문자열을 가져옴
        let title = sender.currentTitle
        
        switch title {
        case "가위":
            // 가위 열거형을 만들어 저장
            myChoice = Rps.sissors
        case "바위":
            myChoice = Rps.rock
        case "보":
            myChoice = Rps.paper

        default:
            break
        }
        
    }
    
    @IBAction func selectBtnTapped(_ sender: UIButton) {
        
        // 1. 컴퓨터가 랜덤 선택한 이미지를 이미지 뷰에 표시
        // 2. 컴퓨터가 선택한 것을 레이블에 표시
        switch comChoice {
        case Rps.rock:
            comImageView.image = #imageLiteral(resourceName: "rock")
            comChoiceLabel.text = "바위"
        case Rps.paper:
            comImageView.image = #imageLiteral(resourceName: "paper")
            comChoiceLabel.text = "보"
        case Rps.sissors:
            comImageView.image = #imageLiteral(resourceName: "scissors")
            comChoiceLabel.text = "가위"
        }
        
        // 3.내가 랜덤 선택한 이미지를 이미지 뷰에 표시
        // 4. 내가 선택한 것을 레이블에 표시
        switch myChoice {
        case Rps.rock:
            myImageView.image = #imageLiteral(resourceName: "rock")
            myChoiceLabel.text = "바위"
        case Rps.paper:
            myImageView.image = #imageLiteral(resourceName: "paper")
            myChoiceLabel.text = "보"
        case Rps.sissors:
            myImageView.image = #imageLiteral(resourceName: "scissors")
            myChoiceLabel.text = "가위"
        }
        
        // 5. 컴퓨터가 선택한것과 내가 선택한 것을 비교해서 이겼는지 졌는지 판단하여 표시
        if comChoice == myChoice {
            mainLabel.text = "비겼다!"
        } else if comChoice == .rock && myChoice == .paper {
            mainLabel.text = "이겼다!"
        } else if comChoice == .paper && myChoice == .sissors{
            mainLabel.text = "이겼다!"
        } else if comChoice == .sissors && myChoice == .rock{
            mainLabel.text = "이겼다!"
        } else {
            mainLabel.text = "졌다"
        }
    }
    
    
    @IBAction func resetBtnTapped(_ sender: Any) {
        // 1.컴퓨터가 다시 준비  이미지 뷰에 표시
        // 2. 컴퓨터가  다시 준비 레이블에 표시
        comImageView.image = #imageLiteral(resourceName: "ready")
        comChoiceLabel.text = "준비"
        
        // 3. 내 선택 이미지에도 준비 이미지 뷰에 표시
        // 4.  내 선택 레이블에 준비 레이블 뷰에 표시
        myImageView.image = #imageLiteral(resourceName: "ready")
        myChoiceLabel.text = "준비"
        
        // 5. mainLabel에도 선택하세요 표시
        mainLabel.text = "선택하세요"
        
        // 6. 컴퓨터가 다시 랜덤 가위, 바위, 보를 선택하고 저장
        comChoice = Rps(rawValue: Int.random(in: 0...2))!
    }
    
    
    

}


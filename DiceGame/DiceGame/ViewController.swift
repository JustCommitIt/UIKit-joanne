//
//  ViewController.swift
//  DiceGame
//
//  Created by 김요한 on 2023/04/30.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    
    // 이미지 데이터 바구니
    var diceArray: [UIImage] = [#imageLiteral(resourceName: "black1"), #imageLiteral(resourceName: "black2"), #imageLiteral(resourceName: "black3"), #imageLiteral(resourceName: "black4"), #imageLiteral(resourceName: "black5"), #imageLiteral(resourceName: "black6")]
    
    
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstImageView.image = diceArray[0]
        secondImageView.image = diceArray[2]
        }
    
    
    
    @IBAction func rollBttonTapped(_ sender: UIButton) {
        // 버튼을 눌렀을때 첫번째 이미지를 랜덤으로 변경
        firstImageView.image = diceArray.randomElement()
        
        // 버튼을 눌렀을때 두번째 이미지를 랜덤으로 변경
        secondImageView.image = diceArray.randomElement()

        
    }
    


}


//
//  ResultViewController.swift
//  SubmitValue
//
//  Created by 윤성호 on 15/01/2019.
//  Copyright © 2019 윤성호. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    // 화면에 값을 표시하는데 사용될 레이블
    @IBOutlet var resultEmail: UILabel!     // 이메일
    @IBOutlet var resultUpdate: UILabel!    // 자동갱신 여부
    @IBOutlet var resultInterval: UILabel!  // 갱신주기
    
    // 전달되는 값을 대입받을 프로퍼티
    var paramEmail : String = ""    // 이메일
    var paramUpdate : Bool = false  // 자동갱신 여부
    var paramInterval : Double = 0  // 갱신주기
    
    // 화면이 메모리에 로드되고 난 시점에는 viewDidLoad 메소드를 호출함 -> 전달받은 값을 표시
    override func viewDidLoad() {
        self.resultEmail.text = paramEmail
        self.resultUpdate.text = (paramUpdate == true ? "자동갱신" : "자동갱신 안함")
        self.resultInterval.text = "\(Int(paramInterval))분 마다 갱신"
    }
    
}

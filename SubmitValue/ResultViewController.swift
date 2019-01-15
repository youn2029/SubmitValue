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
    
    
    
}

//
//  ViewController.swift
//  SubmitValue
//
//  Created by 윤성호 on 15/01/2019.
//  Copyright © 2019 윤성호. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 이메일 주소를 입력받는 텍스트필드
    @IBOutlet var email: UITextField!
    
    // 자동갱신 여부를 설정하는 스위치(on/off)
    @IBOutlet var isUpdate: UISwitch!
    
    // 갱신주기를 설정하는 스테퍼
    @IBOutlet var interval: UIStepper!
    
    // 자동갱신 여부를 표시하는 레이블
    @IBOutlet var isUpdateText: UILabel!
    
    // 갱신주기를 표시하는 레이블
    @IBOutlet var intervalText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // 자동갱신 여부가 바뀔 때마다 호출되는 메소드
    @IBAction func onSwitch(_ sender: UISwitch) {
        
        if (sender.isOn == true) {  // 스위치의 on 여부가 true => on
            self.isUpdateText.text = "갱신함"
        } else {
            self.isUpdateText.text = "갱신하지 않음"
        }
        
        /**
         AnyObject타입일때 - 옵셔널 캐스팅
         
         guard let obj = sender as? UISwitch else {
            return
         }
         
         if (obj.isOn == true) {
            self.isUpdateText.text = "갱신함"
         } else {
            self.isUpdateText.text = "갱신하지 않음"
         }
         
         // isOn은 캐스팅 없이 사용가능 but 명확한 타입으로 사용 권장
         
         **/
    }
    
    // 갱샌주기가 바뀔 때마다 호출되는 메소드
    @IBAction func onStepper(_ sender: UIStepper) {
        
        let value = Int(sender.value)   // sender.value의 반환값은 Double -> Int로 형변환
        self.intervalText.text = "\(value)분 마다"
        
        /**
         AnyObject타입일때 - 강제 캐스팅
         
         let obj = sender as! UIStepper
         
         let value = Int(obj.value)
         self.intervalText.text = "\(value)분 마다"
         **/
    }
    
    // submit 버튼 이벤트
    @IBAction func onSubmit(_ sender: Any) {
        
        // vc2의 인스턴스 (ResultViewController타임으로 캐스팅)
        guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "RVC") as? ResultViewController else {
            return
        }
        
        // instantiateViewController의 반환값이 UIViewController타입 => ResultViewController의 프로퍼티를 정의하기 위해
        
        // 값을 전달하는 과정을 여기에 작성
        rvc.paramEmail = self.email.text        // 이메일
        rvc.paramUpdate = self.isUpdate.isOn    // 자동갱신 여부
        rvc.paramInterval = self.interval.value // 갱신주기
    }
    
}


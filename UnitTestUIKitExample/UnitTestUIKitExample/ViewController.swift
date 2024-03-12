//
//  ViewController.swift
//  UnitTestUIKitExample
//
//  Created by YoujinMac on 3/12/24.
//

import UIKit
import Then

class ViewController: UIViewController {
    
    lazy var testTextField = UITextField().then {
        $0.placeholder = "테스트 중"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


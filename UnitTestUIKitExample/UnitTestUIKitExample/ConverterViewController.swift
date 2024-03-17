//
//  ConverterViewController.swift
//  UnitTestUIKitExample
//
//  Created by YoujinMac on 3/17/24.
//

import UIKit

import Then
import SnapKit

class ConverterViewController: UIViewController{
    private lazy var wrappingView = UIView()
    private lazy var titleLbl = UILabel().then {
        $0.text = "아라비안 숫자 -> 로마숫자 변경"
    }
    private lazy var arabicNumLbl = UILabel()
    private lazy var romanNumLbl = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUI()
    }
    
    private func setUI() {
        self.view.addSubview(wrappingView)
        
        wrappingView.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.height.equalTo(400)
            $0.width.equalTo(300)
        }
        
        wrappingView.addSubview(titleLbl)
        wrappingView.addSubview(arabicNumLbl)
        wrappingView.addSubview(romanNumLbl)
        
        titleLbl.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.centerX.equalToSuperview()
        }
        
        arabicNumLbl.snp.makeConstraints {
            $0.top.equalTo(titleLbl.snp.bottom).offset(30)
            $0.centerX.equalToSuperview()
        }
        
        romanNumLbl.snp.makeConstraints {
            $0.top.equalTo(arabicNumLbl.snp.bottom).offset(30)
            $0.centerX.equalToSuperview()
        }
    }
    
    private func setConstraints() {
        
    }
}

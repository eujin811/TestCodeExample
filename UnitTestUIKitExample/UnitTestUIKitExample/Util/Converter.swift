//
//  Converter.swift
//  UnitTestUIKitExample
//
//  Created by YoujinMac on 3/17/24.
//

import Foundation

final class Converter {
    
    func arabicNumToRomanNum(_ num: Int) -> String {
//        return "I"
        
        return num == 5 ? "V" : String(repeating: "I", count: num)
    }
    
}

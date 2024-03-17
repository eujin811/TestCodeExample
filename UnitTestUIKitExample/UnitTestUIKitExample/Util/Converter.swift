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
                
        var result = String()
        
        var localNumber = num
        if localNumber >= 5 {
            result += "V"
            localNumber = localNumber - 5
        }
        
        result += String(repeating: "I", count: localNumber)
        return result
    }
    
}

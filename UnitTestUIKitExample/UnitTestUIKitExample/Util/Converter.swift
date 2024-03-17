//
//  Converter.swift
//  UnitTestUIKitExample
//
//  Created by YoujinMac on 3/17/24.
//

import Foundation

final class Converter {
    
    func arabicNumToRomanNum(_ num: Int) -> String {
        
        let romanNum = [1: "I", 5: "V", 10: "X", 50: "L", 100: "C", 500: "D", 1000: "M"]
        
        var digitPosition = 1000
        var compareNum = num
        var result = ""
        
        while compareNum > 0 {
            let firstDigit = compareNum / digitPosition
            
            if firstDigit == 0 {
                digitPosition /= 10
                continue
            }
            
            if firstDigit == 4 {
                result += romanNum[digitPosition]! + romanNum[digitPosition * 5]!
                compareNum -= digitPosition * firstDigit
                digitPosition /= 10
                
            } else if firstDigit == 9 {
                result += romanNum[digitPosition]! + romanNum[digitPosition * 10]!
                compareNum -= digitPosition * firstDigit
                digitPosition /= 10
                
            } else if firstDigit >= 5 {
                result += romanNum[digitPosition * 5]!
                compareNum -= digitPosition * 5
                
            } else {
                result += romanNum[digitPosition]!
                compareNum -= digitPosition
            }
            
        }
        
        return result
    }
    
}

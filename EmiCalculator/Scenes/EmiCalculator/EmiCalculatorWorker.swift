//
//  EmiCalculatorWorker.swift
//  EmiCalculator
//
//  Created by Tirupati Balan on 11/04/16.
//  Copyright (c) 2016 CelerStudio. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

class EmiCalculatorWorker
{
    // MARK: Business Logic
    func calculateEmi(loanAmount : Double, loanTenure : Double, interestRate : Double) -> Double {
        let interestRateVal = interestRate / 1200
        let loanTenureVal = loanTenure * 12
        return loanAmount * interestRateVal / (1 - (pow(1/(1 + interestRateVal), loanTenureVal)))
    }
    
    func calculateTotalPayment(emi : Double, loanTenure : NSInteger) -> Double {
        let totalMonth = loanTenure * 12
        return emi * Double(totalMonth)
    }
    
    func calculateTotalInterestPayable(totalPayment : Double, loanAmount : Double) -> Double {
        return totalPayment - loanAmount
    }
}

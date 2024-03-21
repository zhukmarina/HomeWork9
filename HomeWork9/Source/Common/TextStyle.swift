//
//  TextStyle.swift
//  HomeWork9
//

//

import UIKit

protocol TextStyleProtocol {
    func textColor(for type: TextType) -> UIColor
}

class TextStyle : TextStyleProtocol {
    
    func textColor(for type: TextType) -> UIColor {
        
        switch type {
        case .regular:
            return .black
        case .error:
            return .red
        case .none:
            return .clear
        }
    }
}

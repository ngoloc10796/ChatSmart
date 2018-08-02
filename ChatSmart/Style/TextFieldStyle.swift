//
//  TextFieldStyle.swift
//  ChatSmart
//
//  Created by Ngô Tiến Lộc on 8/2/18.
//  Copyright © 2018 Ngô Tiến Lộc. All rights reserved.
//

import Foundation
import UIKit
//enum keyType:Int {
//
//
//    case Default =  0
//    case Name
//    case Password
//    case Phone
//
//    var desc: String {
//        switch self {
//        case .Default:
//            return "default"
//        case .Name:
//            return "Name here"
//        case .Password:
//            return "abc"
//        case .Phone:
//            return "bvbvb"
//        }
//    }
//}

class  TextFieldStyle: UITextField {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.layer.cornerRadius = 20
        self.layer.borderColor = UIColor.green.cgColor
        self.layer.borderWidth = 0.5
        self.borderStyle = .none
        
        let leftView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        self.leftView = leftView
        self.leftViewMode = .always
    }
    
}

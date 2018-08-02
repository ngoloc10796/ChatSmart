//
//  HomeViewController.swift
//  ChatSmart
//
//  Created by Ngô Tiến Lộc on 7/28/18.
//  Copyright © 2018 Ngô Tiến Lộc. All rights reserved.
//

import Foundation
import UIKit
import Font_Awesome_Swift
class HomeViewController:  UIViewController{
    
    override func viewDidLoad() {
        
        self.setNavBar()
    }
    
    func setNavBar (){
       
        let btnProfile =  UIButton(type: .system)
        btnProfile.setImage(#imageLiteral(resourceName: "icon-profile"), for: .normal)
        btnProfile.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        navigationItem.leftBarButtonItem   = UIBarButtonItem(customView: btnProfile)
        
        let btnContact = UIButton(type: .system)
      
    }
}

//
//  PreambleViewController.swift
//  ChatSmart
//
//  Created by Ngô Tiến Lộc on 7/30/18.
//  Copyright © 2018 Ngô Tiến Lộc. All rights reserved.
//

import UIKit

class PreambleViewController: UIViewController,UIScrollViewDelegate {
    @IBOutlet weak var scrollView: UIScrollView!
   
    @IBOutlet weak var btnSlide1: UIImageView!
    @IBOutlet weak var btnSlide2: UIImageView!
    @IBOutlet weak var btnSlide3: UIImageView!
   
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var btnSign: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    
    let imgActive =  UIImage(named: "slide-btn-active")
    let img = UIImage(named: "slide-btn")
    var images: [String] = ["slide-1","slide-2","slide-3"]
    var titleSlide: [String] = ["Connect with friends","Get in touch instantly","Many platforms, one chat"]
    
    var frame = CGRect (x: 0, y: 0, width: 0, height: 0)
    override func viewDidLoad() {
        super.viewDidLoad()
  
        // style button
        btnLogin.setBackgroundImage(UIImage(named: "button - small"), for: .normal)
        btnSign.setBackgroundImage(UIImage(named: "button - small"), for: .normal)
        // scroll view image
        scrollView.isPagingEnabled = true
        scrollView.showsHorizontalScrollIndicator  = false
  
        // Do any additional setup after loading the view.
        for index in 0..<images.count {
            frame.origin.x = scrollView.frame.size.width * CGFloat(index)
            frame.size = scrollView.frame.size
            let imgView = UIImageView(frame: frame)
            imgView.image = UIImage(named: images[index])
            imgView.contentMode = .scaleToFill
            self.scrollView.addSubview(imgView)
        }
        scrollView.contentSize = CGSize(width: (scrollView.frame.size.width * CGFloat(images.count)), height: scrollView.frame.size.height)
        scrollView.delegate = self
        
     
        self.btnSlide1.image = imgActive
        self.btnSlide2.image = img
        self.btnSlide3.image = img
        self.textView.text = titleSlide[0]
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        self.updateButtonScroll()
    }
    

    func updateButtonScroll () {
        let pageNumber  = scrollView.contentOffset.x/scrollView.frame.size.width
        print(pageNumber)
        switch pageNumber {
        case 0.0:
            
            btnSlide1.image = imgActive
            btnSlide2.image = img
            btnSlide3.image = img
            self.textView.text = titleSlide[0]
        case 1.0:
            btnSlide2.image = imgActive
            btnSlide1.image = img
            btnSlide3.image = img
            self.textView.text = titleSlide[1]
        case 2.0:
            btnSlide3.image = imgActive
            btnSlide1.image = img
            btnSlide2.image = img
            self.textView.text = titleSlide[2]
            
        default:
            btnSlide1.image = imgActive
            btnSlide2.image = img
            btnSlide3.image = img
            self.textView.text = titleSlide[1]
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
       
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

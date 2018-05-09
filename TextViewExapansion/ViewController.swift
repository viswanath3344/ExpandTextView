//
//  ViewController.swift
//  TextViewExapansion
//
//  Created by jacob Liu on 02/05/18.
//  Copyright © 2018 8locations. All rights reserved.
//

import UIKit
import GrowingTextView

class ViewController: UIViewController,GrowingTextViewDelegate  {

    
    @IBOutlet weak var messageTextView: GrowingTextView!
    
    
    @IBOutlet weak var threeLabel: UILabel!
    @IBOutlet weak var fourLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        messageTextView.delegate  = self
        
       // messageTextView.translatesAutoresizingMaskIntoConstraints = true
       // messageTextView.isScrollEnabled = false
       // messageTextView.sizeToFit()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func textViewDidChangeHeight(_ textView: GrowingTextView, height: CGFloat) {
        UIView.animate(withDuration: 0.2) {
            self.view.layoutIfNeeded()
        }
    }
    
    func textViewDidChange(_ textView: UITextView) {
       
    }
    func textViewDidEndEditing(_ textView: UITextView) {
       
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


  
}

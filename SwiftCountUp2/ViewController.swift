//
//  ViewController.swift
//  SwiftCountUp2
//
//  Created by KazukiSaito on 2021/02/15.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var countUpLabel: UILabel!
    
    // variable with integer data.
    
    var count = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // change "Label" string to 0 as an integer.
        countUpLabel.text = "0"
        
    }


    @IBAction func plus(_ sender: Any) {
        
        // update Label with the data, integer.
        // count up.
        
        count = count + 1
        
        countUpLabel.text = String(count)
        
        // set color Yellow when the int is counting over 10.
        if count >= 10 {
            changeTextColor()
        }
    }
    
    
    @IBAction func minus(_ sender: Any) {
        // update Label with the data, integer.
        // count down
        
        count = count - 1
        countUpLabel.text = String(count)
        
        
        // set color white when the int is under 0.
        if count <= 0 {
            resetColor()
        }
        
    }
    
    // newly created methods below.
    func changeTextColor() {
        countUpLabel.textColor = .yellow
    }
    
    func resetColor(){
        countUpLabel.textColor = .white
    }
    
    
}

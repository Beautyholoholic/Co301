//
//  ViewController.swift
//  week10&11
//
//  Created by student on 13/11/2562 BE.
//  Copyright © 2562 Project. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var citybuttons: [UIButton]!
    
    @IBAction func handleSelection(_ sender: Any) {
        citybuttons.forEach { (button) in
        UIView.animate(withDuration: 0.3,animations:{
        button.isHidden = !button.isHidden
        self.view.layoutIfNeeded()
            })
        }
    }
    
    enum cities: String {
        case bangkok = "Bangkok"
        case boston = "Boston"
        case perth = "Perth"
        case wellington = "Wellington"
    }
    
    
    @IBAction func cityTabbed(_ sender: UIButton) {
        guard let title = sender.currentTitle,
            let city = cities(rawValue: title)
            else {
                return
        }
        
        switch city {
            
        case .bangkok:
            print("Bangkok")
        case .boston:
            print("Boston")
        case .perth:
            print("Perth")
        case .wellington:
            print("Wellington") }
        
    }
        
    }
  /* override func viewDidLoad() {
        super.viewDidLoad()*/
        // Do any additional setup after loading the view, typically from a nib.




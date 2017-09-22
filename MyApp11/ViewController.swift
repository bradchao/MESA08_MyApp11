//
//  ViewController.swift
//  MyApp11
//
//  Created by user22 on 2017/9/22.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToPage2" {
            print("prepar: Page2")
            let vc2 = segue.destination as! Page2VC
            let rand = String(arc4random_uniform(49)+1)
            print("Main:\(rand)")
            
            
            vc2.randString = rand
            vc2.m1()
            
            
        }else if segue.identifier == "segueToPage3" {
            print("prepar: Page3")
        }
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        if segue.identifier == "unwindFromPage2" {
            print("back: Page2")
            
            print(segue.destination is ViewController)
            print(segue.source is Page2VC)
            
            let vc2 = segue.source as! Page2VC
            print("Page2VC:test1:\(vc2.test1)")
            
            
        }else if segue.identifier == "unwindFromPage3" {
            print("back: Page3")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


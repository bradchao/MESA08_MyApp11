//
//  Page2VC.swift
//  MyApp11
//
//  Created by user22 on 2017/9/22.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import UIKit

class Page2VC: UIViewController {

    @IBOutlet weak var rand: UILabel!
    var randString = ""
    var test1 = 123
    
    
    func m1(){
        print("Page2VC:m1()")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("DidLoad")
        print("I am Page2")
        rand.text = randString
        
        let app = UIApplication.shared.delegate as! AppDelegate
        
        print("Page2VC:app:rand = \(app.rand)")


    }
    
    @IBAction func quit(_ sender: Any) {
        exit(0)
    }
    override func viewDidAppear(_ animated: Bool) {
        print("DidAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("DidDisappear")
        test1 = 321
    }
    

}

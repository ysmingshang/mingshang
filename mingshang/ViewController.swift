//
//  ViewController.swift
//  mingshang
//
//  Created by Mikey on 2018/1/9.
//  Copyright © 2018年 mingshang. All rights reserved.
//

import UIKit
import my_category
import hotel_category

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let vc = CTMediator.sharedInstance().a_aViewController { (result) in
            print(result ?? "123")
        }
//        let acontroller = CTMediator.sharedInstance().a_aViewController{ result in
//            print(result ?? "default value")
//        }
        self.navigationController?.pushViewController(vc!, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


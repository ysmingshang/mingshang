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
        
        let url = URL(string: "mingshang://my/viewController?id=12&name=bbj")!
        
        let vc = CTMediator.sharedInstance().performAction(with: url) { (dic) in
            print("\(String(describing: dic?.description))")
        }
        
        if vc is UIViewController {
            self.navigationController?.pushViewController(vc as! UIViewController, animated: true)
        }
        
//        let vc = CTMediator.sharedInstance().a_aViewController { (result) in
//            print(result ?? "123")
//        }
//        self.navigationController?.pushViewController(vc!, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


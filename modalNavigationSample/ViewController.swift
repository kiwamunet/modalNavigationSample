//
//  ViewController.swift
//  modalNavigationSample
//
//  Created by suzuki_kiwamu on 2015/03/26.
//  Copyright (c) 2015年 suzuki_kiwamu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapped(sender: AnyObject) {
        
        let hoge = FirstViewController()
        let menuNavigationController = UINavigationController(rootViewController: hoge)
        menuNavigationController.navigationBarHidden = true
        menuNavigationController.modalTransitionStyle = UIModalTransitionStyle.CoverVertical
        menuNavigationController.modalPresentationStyle = UIModalPresentationStyle.OverCurrentContext
        
        self.presentViewController(menuNavigationController, animated: true, completion: nil)
    }

}


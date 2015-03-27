//
//  FirstViewController.swift
//  modalNavigationSample
//
//  Created by suzuki_kiwamu on 2015/03/26.
//  Copyright (c) 2015年 suzuki_kiwamu. All rights reserved.
//

import UIKit

@objc protocol hogeDelegate {
    func closePageView()
}


class FirstViewController: UIViewController, hogeDelegate {
    required init(coder aDecoder: NSCoder) { super.init(coder: aDecoder) }
    override init() {
        super.init(nibName: String(FirstViewController), bundle: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapped(sender: AnyObject) {
        let hoge = SecondViewController()
        hoge.delegate = self
        
        self.navigationController?.pushViewController(hoge, animated: true)
    }
    
    
    func closePageView(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func hoge(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

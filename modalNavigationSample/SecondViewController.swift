//
//  SecondViewController.swift
//  modalNavigationSample
//
//  Created by suzuki_kiwamu on 2015/03/26.
//  Copyright (c) 2015年 suzuki_kiwamu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    required init(coder aDecoder: NSCoder) { super.init(coder: aDecoder) }
    override init() {
        super.init(nibName: String(SecondViewController), bundle: nil)
    }
    
    
    
    
    var delegate: hogeDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func tapped(sender: AnyObject) {
        self.delegate?.closePageView()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func nextTapped(sender: AnyObject) {
        let hoge = ThirdViewController()
        hoge.delegate = delegate
        self.navigationController?.pushViewController(hoge, animated: true)
    }
}

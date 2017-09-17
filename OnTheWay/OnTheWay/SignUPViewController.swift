//
//  SignUPViewController.swift
//  OnTheWay
//
//  Created by ZHENGYANGQIAO on 9/14/17.
//  Copyright © 2017 Udacity. All rights reserved.
//

import UIKit

class SignUPViewController: UIViewController {
    @IBOutlet weak var txtUserName: UITextField!


    @IBOutlet weak var txtUserPassword: UITextField!
    
    @IBOutlet weak var txtComfirmPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signUPTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  ViewController.swift
//  OnTheWay
//
//  Created by ZHENGYANGQIAO on 9/14/17.
//  Copyright © 2017 Udacity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.performSegue(withIdentifier: "gotoLogin", sender: self)
    }

    
    @IBAction func logOutTapped(_ sender: UIButton) {
                self.performSegue(withIdentifier: "gotoLogin", sender: self)
    }

}


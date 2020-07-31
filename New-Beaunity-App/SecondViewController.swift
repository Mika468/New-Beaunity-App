//
//  SecondViewController.swift
//  New-Beaunity-App
//
//  Created by Mikaela Foronda Zanipatin on 7/30/20.
//  Copyright © 2020 Mikaela Foronda. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var wellnessQuote: UILabel!
    
    @IBAction func quoteTwo(_ sender: Any) { wellnessQuote.text = "It's the little things in life-Unknown"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


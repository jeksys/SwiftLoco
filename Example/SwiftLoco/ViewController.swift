//
//  ViewController.swift
//  SwiftLoco
//
//  Created by Eugene Yagrushkin on 2017-04-13.
//  Copyright © 2017 LocoEye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var localizedLabel: UILabel!
    @IBOutlet var localizedButton: UIButton!
    @IBOutlet var localizedTextField: UITextField!
    @IBOutlet var localizedSegmentControl: UISegmentedControl!
    @IBOutlet var localizedTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func localizedViews(){
        
    }
    
    @IBAction func localizationAction(_ sender: Any) {
        localizedViews()
    }
    
}


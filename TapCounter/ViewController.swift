//
//  ViewController.swift
//  TapCounter
//
//  Created by Rimil Dey on 19/10/17.
//  Copyright © 2017 Rimil Dey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    // MARK: - outlets
    
    @IBOutlet weak var countLabel: UILabel!
    
    // MARK: - Properties
    var count = 0
    
    // MARK: - Interactions
    @IBAction func longPressTapButton(_ sender: UILongPressGestureRecognizer) {
        increaseCount()
    }
    
    @IBAction func tapCounter(_ sender: UIButton) {
        increaseCount()
    }
    
    @IBAction func tapResetButton(_ sender: UIBarButtonItem) {
        countLabel.text = "0"
        count = 0
    }
    
    // MARK: - Functions
    func increaseCount(){
        count = count + 1
        countLabel.text = String(count)
    }

}


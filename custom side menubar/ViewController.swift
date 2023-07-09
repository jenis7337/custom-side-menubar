//
//  ViewController.swift
//  custom side menubar
//
//  Created by Jenish Navadiya on 09/07/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var v: UIView!
    @IBOutlet weak var xValue: NSLayoutConstraint!
    @IBOutlet weak var buttonAction: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        v.alpha = 0
     
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear){
            self.v.alpha = 1
        }
    }
    @IBAction func buttonAction1(_ sender: Any) {
        xValue.constant = 280
        
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        xValue.constant = -280
    }
}


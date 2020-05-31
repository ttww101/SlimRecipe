//
//  BMIVC.swift
//  SlimRecipe
//
//  Created by Apple on 4/25/19.
//  Copyright © 2019 whitelok.com. All rights reserved.
//

import UIKit

class BMIVC: UIViewController {

    @IBOutlet weak var heightTF: UITextField!
    @IBOutlet weak var weightTF: UITextField!
    @IBOutlet weak var bmiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    @IBAction func Calculate(_ sender: UIButton) {
        let height = heightTF.text
        let weight = weightTF.text
        if let h = height, let w = weight, h != "", w != "" {
            let bmiH = Float(h)! / 100
            let bmiW = Float(w)!
            let bmi = bmiW / (bmiH * bmiH)
            bmiLabel.text = "  \(String(format: "%.2f", bmi))"
        }
        
    }
    
    @IBAction func Clear(_ sender: UIButton) {
        heightTF.text = ""
        weightTF.text = ""
        bmiLabel.text = ""
    }
}

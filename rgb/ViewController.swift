//
//  ViewController.swift
//  rgb
//
//  Created by Дэлина Дворжецкая on 24.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var viewOutlet: UIView!
    @IBOutlet var labelROutlet: UILabel!
    @IBOutlet var labelGOutlet: UILabel!
    @IBOutlet var labelBOutlet: UILabel!
    @IBOutlet var sliderROutlet: UISlider!
    @IBOutlet var sliderGOutlet: UISlider!
    @IBOutlet var sliderBOutlet: UISlider!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewOutlet.layer.cornerRadius = 40
        
        changeColor()
        
        labelROutlet.text = String(format: "%.2f", sliderROutlet.value)
        labelGOutlet.text = String(format: "%.2f", sliderGOutlet.value)
        labelBOutlet.text = String(format: "%.2f", sliderBOutlet.value)
    }
    
    func changeColor() {
        viewOutlet.backgroundColor = UIColor(displayP3Red:  CGFloat(sliderROutlet.value), green: CGFloat(sliderGOutlet.value), blue: CGFloat(sliderBOutlet.value), alpha: 1)
    }
    
    @IBAction func EnteredSlider(_ sender: UISlider) {
        
        viewOutlet.backgroundColor = UIColor(displayP3Red:  CGFloat(sliderROutlet.value), green: CGFloat(sliderGOutlet.value), blue: CGFloat(sliderBOutlet.value), alpha: 1)
        
        labelROutlet.text = String(format: "%.2f", sliderROutlet.value)
        labelGOutlet.text = String(format: "%.2f", sliderGOutlet.value)
        labelBOutlet.text = String(format: "%.2f", sliderBOutlet.value)
    }
            
}





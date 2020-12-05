//
//  ViewController.swift
//  HW2.2
//
//  Created by Дмитрий Медяков on 04.12.2020.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet var displayColor: UIView!
    
    @IBOutlet var redName: UILabel!
    @IBOutlet var redValue: UILabel!
    @IBOutlet var redSliderValue: UISlider!
    
    @IBOutlet var greenName: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var greenSliderValue: UISlider!
    
    @IBOutlet var blueName: UILabel!
    @IBOutlet var blueValue: UILabel!
    @IBOutlet var blueSliderValue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        redName.text = "Red:"
        redSliderValue.minimumValue = 0
        redSliderValue.maximumValue = 255
        redValue.text = String(redSliderValue.value)
        
        greenName.text = "Green:"
        greenSliderValue.minimumValue = 0
        greenSliderValue.maximumValue = 255
        greenValue.text = String(greenSliderValue.value)
        
        blueName.text = "Blue:"
        blueSliderValue.minimumValue = 0
        blueSliderValue.maximumValue = 255
        blueValue.text = String(blueSliderValue.value)
        
        displayColor.layer.cornerRadius = 20
    }

    func currentBackgroundColor() {
        displayColor.backgroundColor = UIColor(red: CGFloat(redSliderValue.value / 255), green: CGFloat(greenSliderValue.value / 255), blue: CGFloat(blueSliderValue.value / 255), alpha: 1)
    }
    
    @IBAction func redCurrentValue() {
        redValue.text = String(Int(redSliderValue.value))
        currentBackgroundColor()
    }
    
    @IBAction func greenCurrenValue() {
        greenValue.text = String(Int(greenSliderValue.value))
        currentBackgroundColor()
    }
    
    @IBAction func blueCurrentValue() {
        blueValue.text = String(Int(blueSliderValue.value))
        currentBackgroundColor()
    }
    
}


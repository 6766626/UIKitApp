//
//  ViewController.swift
//  UIKitApp
//
//  Created by Alex on 15.05.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segmentalControl: UISegmentedControl!
    @IBOutlet var mainLable: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var mainBottom: UIButton!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var switchForm: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK : Segmented Control
        segmentalControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        //Mark: Label
        mainLable.text = ""
        mainLable.font = mainLable.font.withSize(30)
        mainLable.textAlignment = .center
        mainLable.numberOfLines = 2
        
        //Mark: Slider
        slider.value = 1
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .blue
        slider.thumbTintColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
        
        mainLable.text = String(slider.value)
        
        
        //MARK: TextField
        textField.backgroundColor = .white
        textField.keyboardType = .numberPad
        //MARK :Buttom
        mainBottom.layer.cornerRadius = 10
        mainBottom.setTitle("Готово", for: .normal)
        
        //MARK: datePicker
        
    }
    

    @IBAction func segmentControlAction(_ sender: Any) {
        switch segmentalControl.selectedSegmentIndex {
        case 0:
            mainLable.text = "Выбран сегмент с именем 0"
            mainLable.textColor = .red
        case 1:
            mainLable.text = "Выбран сегмент с именем 1"
            mainLable.textColor = .yellow
        case 2:
            mainLable.text = "Выбран сегмент с именем 2"
            mainLable.textColor = .green
        default: break
        }
    }
    
    @IBAction func sliderAction() {
        mainLable.text = String(Int(slider.value))
    }
    
    @IBAction func mainButtomAction(_ sender: Any) {
        guard let text = textField.text, !text.isEmpty else {return}
        mainLable.text = text
    }
    
    
    @IBAction func datePickerAction(_ sender: Any) {
        let dateFormator = DateFormatter()
        dateFormator.dateStyle = .full
        
        mainLable.text = dateFormator.string(from: datePicker.date)
    }
    
    @IBAction func toggleElements(_ sender: Any) {
        segmentalControl.isHidden = !switchForm.isOn
        mainLable.isHidden = !switchForm.isOn
        slider.isHidden = !switchForm.isOn
        textField.isHidden = !switchForm.isOn
        mainBottom.isHidden = !switchForm.isOn
        datePicker.isHidden = !switchForm.isOn
    }
}


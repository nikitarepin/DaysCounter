//
//  ViewController.swift
//  BirthsdayApp
//
//  Created by Никита Репин on 06.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var infoLabel: UILabel!
    private var numbersOfDays = ""
    
    @IBOutlet weak var resultButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultButton.layer.cornerRadius = 12

    }

    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numbersOfDays = range.formatted(.components(style: .wide, fields: [.day]))
        
    }
    
    @IBAction func resultButtonTapped() {
        infoLabel.text = "Мы вместе \(numbersOfDays)"
    }
    
}


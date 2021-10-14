//
//  CalculatorViewController.swift
//  demo30minutes
//
//  Created by Déborah Suon on 10/08/2021.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var pourboireLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var additionLabel: UILabel!
    @IBAction func controlValueChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            currencySign = "€"
        } else {
            currencySign = "$"
        }
    }
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        updateDisplay()
    }
    
    let tauxPourboire = 0.15
    var currencySign = "€"
    
    func updateDisplay() {
        let montantAddition = slider.value
        let montantPourboire = Double(montantAddition) * tauxPourboire
        additionLabel.text = String(Int(montantAddition)) + " " + currencySign
        pourboireLabel.text = String(Int(montantPourboire)) + " " + currencySign
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDisplay()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

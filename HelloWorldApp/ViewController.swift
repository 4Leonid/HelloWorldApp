//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by EkaterinaP on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var greetingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.isHidden = true
        greetingButton.configuration = setupButton(with: "Show Greeting")
        //greetingButton.layer.cornerRadius = 10
    }
    
//    @IBAction func greetingButtonPressed() {
//        greetingLabel.isHidden.toggle()
//
//        greetingButton.setTitle(
//            greetingLabel.isHidden ? "Show Greetings" : "Hide Greetings",
//            for: .normal)
//    }
    
    @IBAction func greetingButtonPressed() {
        greetingLabel.isHidden.toggle()
        greetingButton.configuration = setupButton(
            with: greetingLabel.isHidden ? "Show Greetings" : "Hide Greetings"
        )
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.cornerStyle = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        return buttonConfiguration
    }
}


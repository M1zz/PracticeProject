//
//  ViewController.swift
//  PracticeNotification
//
//  Created by 이현호 on 2021/04/05.
//

import UIKit
import NotificationCenter

class ViewController: UIViewController {

    @IBOutlet weak var greenView: GreenView!
    @IBOutlet weak var orangeView: OrangeView!
    @IBOutlet weak var redView: RedView!
    
    var backgroundButtonFlag: Bool = false
    var buttonBackgroundFlag: Bool = false
    var allButtonBackgroundFlag: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        NotificationCenter.default.addObserver(self, selector: #selector(changeBackgroundColor), name: Notification.Name("changeBackground"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(changeUpButtonColor), name: Notification.Name("changeUpButtonColor"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(changeAllButonColor), name: Notification.Name("changeAllButonColor"), object: nil)
    }

    @objc func changeBackgroundColor() {
        backgroundButtonFlag.toggle()
        if backgroundButtonFlag {
            view.backgroundColor = .systemYellow
        } else {
            view.backgroundColor = .systemBlue
        }
    }

    @objc func changeUpButtonColor() {
        buttonBackgroundFlag.toggle()
        if buttonBackgroundFlag {
            greenView.backgroundColor = .systemPink
        } else {
            greenView.backgroundColor = .systemGreen
        }
    }
    
    @objc func changeAllButonColor() {
        allButtonBackgroundFlag.toggle()
        if allButtonBackgroundFlag {
            greenView.backgroundColor = .systemPink
            orangeView.backgroundColor = .systemPurple
        } else {
            greenView.backgroundColor = .systemGreen
            orangeView.backgroundColor = .systemOrange
        }
    }
}


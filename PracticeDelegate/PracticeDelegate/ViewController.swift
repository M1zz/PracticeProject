//
//  ViewController.swift
//  PracticeDelegate
//
//  Created by 이현호 on 2021/04/04.
//

import UIKit

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
        greenView.delegate = self
        orangeView.delegate = self
        redView.delegate = self
    }
}

extension ViewController: GreenViewDelegate {
    func didTapSuperViewBackgroundChangeButton() {
        backgroundButtonFlag.toggle()
        if backgroundButtonFlag {
            view.backgroundColor = .systemYellow
        } else {
            view.backgroundColor = .systemBlue
        }
    }
}

extension ViewController: OrangeViewDeleagte {
    func didTapGreenButtonBackgroundChangeButton() {
        buttonBackgroundFlag.toggle()
        if buttonBackgroundFlag {
            greenView.backgroundColor = .systemPink
        } else {
            greenView.backgroundColor = .systemGreen
        }
    }
}

extension ViewController: RedViewDeleagte {
    func didTapAllButtonBackgroundChangeButton() {
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

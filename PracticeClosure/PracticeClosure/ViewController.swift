//
//  ViewController.swift
//  PracticeClosure
//
//  Created by 이현호 on 2021/04/05.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var greenView: GreenView!
    @IBOutlet weak var orangeView: OrangeView!
    @IBOutlet weak var redView: RedView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        greenView.changeBackgroundColor {print("asdf")}
    }


}


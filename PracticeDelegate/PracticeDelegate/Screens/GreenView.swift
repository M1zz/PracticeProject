//
//  GreenView.swift
//  PracticeDelegate
//
//  Created by 이현호 on 2021/04/04.
//

import UIKit

protocol GreenViewDelegate {
    func didTapSuperViewBackgroundChangeButton()
}

class GreenView: UIView {
    @IBOutlet weak var greenButton: UIButton!
    
    var delegate: GreenViewDelegate?
    
    @IBAction func didTapGreenButton(_ sender: Any) {
        print("green button pushed")
        delegate?.didTapSuperViewBackgroundChangeButton()
    }
}

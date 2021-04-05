//
//  RedView.swift
//  PracticeDelegate
//
//  Created by 이현호 on 2021/04/04.
//

import UIKit

protocol RedViewDeleagte {
    func didTapAllButtonBackgroundChangeButton()
}
class RedView: UIView {
    @IBOutlet weak var redButton: UIButton!
    var delegate: RedViewDeleagte!
    
    @IBAction func DidTapOrangeButton(_ sender: Any) {
        print("red button tapped!")
        delegate.didTapAllButtonBackgroundChangeButton()
    }
}

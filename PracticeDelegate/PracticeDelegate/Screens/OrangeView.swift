//
//  OrangeView.swift
//  PracticeDelegate
//
//  Created by 이현호 on 2021/04/04.
//

import UIKit

protocol OrangeViewDeleagte {
    func didTapGreenButtonBackgroundChangeButton()
}

class OrangeView: UIView {
    @IBOutlet weak var orangeButton: UIButton!
    var delegate: OrangeViewDeleagte!
    
    @IBAction func DidTapOrangeButton(_ sender: Any) {
        print("orange button pushed")
        delegate.didTapGreenButtonBackgroundChangeButton()
    }
}

//
//  GreenView.swift
//  PracticeClosure
//
//  Created by 이현호 on 2021/04/05.
//

import UIKit

class GreenView: UIView {
    @IBOutlet weak var greenButton: UIButton!

    var changeBackgroundColor: (() -> Void)?
    
    @IBAction func didTapGreenButton(_ sender: Any) {
        print("green button pushed")
        changeBackgroundColor!()
    }
}

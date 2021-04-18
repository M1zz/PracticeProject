//
//  ViewController.swift
//  PracticeModalPresent
//
//  Created by 이현호 on 2021/04/18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func clickPresentButton(_ sender: Any) {
        guard let vcName = self.storyboard?.instantiateViewController(withIdentifier: "NewViewController") else { return }
        self.present(vcName, animated: true, completion: nil)
    }
    
}


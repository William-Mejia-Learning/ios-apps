//
//  ViewController.swift
//  quiz-game
//
//  Created by William Mejia on 12/9/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        private let imageView :
        view.backgroundColor = .systemBlue
        
        let labelRect = CGRect(x:50, y:100, width: 200, height: 100)
        
        let colorView = UIView(frame: labelRect)
        colorView.backgroundColor = .red
        
        let label = UILabel(frame: labelRect)

        label.textColor = .white

        label.text = "My name is William"

        view.addSubview(label)
        
        
    }


}


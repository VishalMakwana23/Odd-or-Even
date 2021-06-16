//
//  ViewController.swift
//  OddEven
//
//  Created by DCS on 14/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let mylbl:UILabel = {
        
        let label = UILabel()
        label.text = "Check The Number Is Even or ODD"
        label.textAlignment = .center
        return label
        
        
    }()
    private let myButton:UIButton = {
        let button = UIButton()
        button.setTitle("Continue", for: .normal)
        button.addTarget(self, action: #selector(handleEvent), for: .touchUpInside)
        button.backgroundColor = UIColor.yellow
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 6
        return button
    }()

    @objc private func handleEvent() {
        
        let vc = OddEvenVC()
        vc.title = "Check Number"
        
        navigationController?.pushViewController(vc, animated: true)
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(mylbl)
        view.addSubview(myButton)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        myButton.frame = CGRect(x: 20, y: (view.height/2) - 20, width: view.width-40, height: 40)
        mylbl.frame = CGRect(x: 20, y: (view.height/2)-90, width: view.width-40, height: 50)
    }

}


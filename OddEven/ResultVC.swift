
//
//  ResultVC.swift
//  OddEven
//
//  Created by DCS on 15/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {
    
    var result = ""

    private let mylbl:UILabel = {
    
        let label = UILabel()
        label.text = ""
        label.textAlignment = .center
        return label
    
    
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(mylbl)
        mylbl.text = result
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mylbl.frame = CGRect(x: 20, y: (view.height/2)-25, width: view.width-40, height: 50)
    }
    

    

}

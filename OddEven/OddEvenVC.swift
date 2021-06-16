//
//  OddEvenVC.swift
//  OddEven
//
//  Created by DCS on 15/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class OddEvenVC: UIViewController {


    private let txtbox:UITextField = {
        
        let txt = UITextField()
        txt.textColor = .black
        txt.textAlignment = .center
        txt.borderStyle = .roundedRect
        txt.backgroundColor = .yellow
        txt.layer.cornerRadius = 6
        txt.placeholder = "Enter Number"
        return txt
        
    }()
    
    private let btn:UIButton = {
        let button = UIButton()
        button.setTitle("Check", for: .normal)
        button.addTarget(self, action: #selector(check), for: .touchUpInside)
        button.backgroundColor = UIColor.blue
        button.layer.cornerRadius = 6
        return button
    }()
    
    @objc private func check(){
        
        var result:String = ""
        let alert = UIAlertController(title: "oops!", message: "wrong input.Please Input a Number", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel))
        
        if let value = Int(txtbox.text!) {
            if value == 0 {
                alert.message = "ideal number !"
                self.present(alert, animated: true, completion: nil)
            }
            else
            {
                if(value%2==0)
                {
                    result = "Even"
                }
                else
                {
                    result = "Odd"
                }
            }
        }
        else
        {
            self.present(alert, animated: true, completion: nil)
        }
        if result.isEmpty==false {
            let rvc = ResultVC()
            rvc.result = result
            rvc.title = "Number is : "
            navigationController?.pushViewController(rvc, animated: true)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(txtbox)
        view.addSubview(btn)
        view.backgroundColor = .white

      
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        txtbox.frame = CGRect(x: 20, y: (view.height/2)-50, width: (view.width-40), height: 40)
        btn.frame = CGRect(x: 20, y: (view.height/2)+5, width: (view.width-40), height: 40)
    }
  

}

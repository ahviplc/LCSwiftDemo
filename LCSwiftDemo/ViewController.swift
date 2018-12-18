//
//  ViewController.swift
//  LCSwiftDemo
//
//  Created by theMacOfLC on 2018/12/18.
//  Copyright © 2018年 theMacOfLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var btnShow: UIButton!
    
    @IBAction func btnClicked(_ sender: Any) {
        
        let alertController = UIAlertController(title: "系统提示",
                                                message: "您确定要离开Ahviplc吗？\(txtName.text)", preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        let okAction = UIAlertAction(title: "好的", style: .default, handler: {
            action in
            print("点击了确定-LC")
           
            print(self.txtName.text ?? "LC")
        })
        alertController.addAction(cancelAction)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBOutlet weak var LCLabel: UILabel!
}


//
//  ViewController.swift
//  swiftView
//
//  Created by Jammy on 2014/6/25.
//  Copyright (c) 2014 Takobear. All rights reserved.
//

import UIKit

class ViewController: UIViewController,takoButtonProtocol {
    var button : TakoButton = TakoButton(frame: CGRectMake(100, 100, 100 , 100))

    override func viewDidLoad() {
        super.viewDidLoad()
        button.backgroundColor = UIColor.redColor()
        button.delegate = self
        button.dataSource = self
        self.view.addSubview(button)
        
    }
    
    func didTapButton(takoButton: TakoButton) {
        println("takoButton is touched")
        takoButton.setLabelText()
    }
    
    func labelTextOnTakoButton() -> String  {
        return "TakoBear"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


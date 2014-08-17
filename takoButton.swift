//
//  takoButton.swift
//  swiftView
//
//  Created by on 2014/7/21.
//  Copyright (c) 2014 Takobear. All rights reserved.
//

import Foundation
import UIKit

protocol takoButtonProtocol {
    func didTapButton (takoButton:TakoButton)
    func labelTextOnTakoButton () -> String
}

class TakoButton : UIView {
    
    var delegate:takoButtonProtocol?
    var dataSource:takoButtonProtocol?
    
    init(frame:CGRect ) {
        super.init(frame:frame)
        var tapGesture:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "tapGesturenEvent")
        self.addGestureRecognizer(tapGesture)
    }
    
    func tapGesturenEvent (){
        delegate?.didTapButton(self)
    }
    
    func setLabelText (){
        var label :UILabel = UILabel(frame:CGRectMake(0, 0, 100, 100))
        self.addSubview(label)
        label.text = dataSource?.labelTextOnTakoButton()
    }
    
    
}

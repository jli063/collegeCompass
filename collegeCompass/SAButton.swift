//
//  SAButton.swift
//  collegeCompass
//
//  Created by Apple on 6/13/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class SAButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    private func setupButton() {
        setTitleColor(.white, for: .normal)
        backgroundColor = UIColor.blue
        titleLabel?.font = .boldSystemFont(ofSize: 20)
        layer.cornerRadius = frame.size.height / 2
    }
    
}

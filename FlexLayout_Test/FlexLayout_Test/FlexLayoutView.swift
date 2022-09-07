//
//  FlexLayoutView.swift
//  FlexLayout_Test
//
//  Created by 김승찬 on 2022/09/07.
//

import UIKit

import FlexLayout
import Then

final class FlexLayoutView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setupConstraints()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        
    }
    
    func setupConstraints() {
        
    }
}

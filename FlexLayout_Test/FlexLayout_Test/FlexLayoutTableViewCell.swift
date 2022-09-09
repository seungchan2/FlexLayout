//
//  FlexLayoutTableViewCell.swift
//  FlexLayout_Test
//
//  Created by 김승찬 on 2022/09/08.
//

import UIKit

import FlexLayout
import PinLayout
import Then

final class FlexLayoutTableViewCell: UITableViewCell {
    
    lazy var nameLabel = UILabel().then {
        $0.text = "네임!"
        $0.textColor = .blue
    }
    
    lazy var rootFlexContainer = UIView()
    
    let identifier: String = "FlexLayoutTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
       
        setupView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        setupConstraints()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
    private func setupView() {
        addSubview(rootFlexContainer)
        
        rootFlexContainer.pin.all()
        rootFlexContainer.flex.width(UIScreen.main.bounds.width).height(50).layout()
    }
    
    private func setupConstraints() {
        rootFlexContainer.flex.alignItems(.center).backgroundColor(.yellow).define {
            $0.addItem(nameLabel).width(UIScreen.main.bounds.width)
        }
        
    }
    
    func updateCell() {
        
    }
}

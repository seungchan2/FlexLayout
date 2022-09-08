//
//  FlexLayoutView.swift
//  FlexLayout_Test
//
//  Created by 김승찬 on 2022/09/07.
//

import UIKit

import FlexLayout
import PinLayout
import Then

final class FlexLayoutView: UIView {
    
    lazy var rootFlexContainer = UIView().then {
        $0.backgroundColor = .blue
    }
    
    lazy var label = UILabel().then {
        $0.text = "1111111"
    }
    
    lazy var tableView = UITableView().then {
        $0.backgroundColor = .red
        $0.register(FlexLayoutTableViewCell.self, forCellReuseIdentifier: "FlexLayoutTableViewCell")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()

    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        [rootFlexContainer, tableView]
            .forEach {
                addSubview($0)
            }
        
        rootFlexContainer.flex.define {
            $0.addItem(label)
        }
    }
    
    func setupConstraints() {
        self.rootFlexContainer.flex.layout()
        self.rootFlexContainer.pin.all()
    }
}

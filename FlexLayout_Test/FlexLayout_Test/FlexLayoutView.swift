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

    lazy var tableView = UITableView().then {
        $0.backgroundColor = .red
        $0.register(FlexLayoutTableViewCell.self, forCellReuseIdentifier: "FlexLayoutTableViewCell")
        $0.rowHeight = 100
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
        addSubview(rootFlexContainer)
        
        rootFlexContainer.flex.define {
            $0.addItem(tableView).width(UIScreen.main.bounds.width).height(UIScreen.main.bounds.height)
        }
    }
    
    func setupConstraints() {
        // 순서 체크
        self.rootFlexContainer.pin.all()
        self.rootFlexContainer.flex.layout()
    }
}

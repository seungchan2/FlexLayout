//
//  FlexLayoutTableViewCell.swift
//  FlexLayout_Test
//
//  Created by 김승찬 on 2022/09/08.
//

import UIKit

import FlexLayout

final class FlexLayoutTableViewCell: UITableViewCell {
    
    let identifier: String = "FlexLayoutTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
        setConstraints()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        
    }
    
    private func setConstraints() {
        
    }
    
    func updateCell() {
        
    }
}

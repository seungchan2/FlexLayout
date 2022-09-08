//
//  FlexLayoutViewController.swift
//  FlexLayout_Test
//
//  Created by 김승찬 on 2022/09/07.
//

import UIKit

import FlexLayout
import PinLayout

final class FlexLayoutViewController: UIViewController {
    
    private let flexLayoutView = FlexLayoutView()
    
    override func loadView() {
        self.view = flexLayoutView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        assignDelegation()
      
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        
        
        
        
    }
    
    private func style() {
        view.backgroundColor = .white
    }
    
    private func assignDelegation() {
        flexLayoutView.tableView.delegate = self
        flexLayoutView.tableView.dataSource = self
    }
}

extension FlexLayoutViewController: UITableViewDelegate {}

extension FlexLayoutViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FlexLayoutTableViewCell", for: indexPath) as? FlexLayoutTableViewCell else { return UITableViewCell() }
        
        return cell
    }
    
    
}

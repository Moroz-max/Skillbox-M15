//
//  ViewController.swift
//  practiceM15
//
//  Created by Максим Морозов on 17.12.2023.
//

import UIKit
import SnapKit
import Alamofire

class ViewController: UIViewController {
    
    let cellID = "cell"
    
    private lazy var tableView = {
        let tableView = UITableView(frame: CGRect.zero, style: .insetGrouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .singleLine
        tableView.allowsSelection = false
        return tableView
    }()
    
    let models: [PostModel] = [PostModel(postImage: UIImage(), postTitle: "Header", postText: "He'll want to use your yacht, and I don't want this thing smelling like fish.", postTimeAfter: "8m ago"),
                               PostModel(postImage: UIImage(), postTitle: "Header", postText: "He'll want to use your yacht, and I don't want this thing smelling like fish.", postTimeAfter: "8m ago")]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CustomCell.self, forCellReuseIdentifier: cellID)
        tableView.delegate = self
        tableView.dataSource = self
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        view.addSubview(tableView)
    }
    
    private func setupConstraints() {
        tableView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }


}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as? CustomCell
        cell?.configure(models[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

extension ViewController: UITableViewDelegate {
    
}

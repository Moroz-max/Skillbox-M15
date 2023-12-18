//
//  CustopmCell.swift
//  practiceM15
//
//  Created by Максим Морозов on 18.12.2023.
//

import Foundation
import UIKit
import SnapKit

class CustomCell: UITableViewCell {
    
    
    private lazy var postimageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .lightGray
        imageView.layer.cornerRadius = 8
        return imageView
    }()
    
    private lazy var postTitleLabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 16)
        label.textColor = .black
        return label
    }()
    
    private lazy var postTextLabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 14)
        label.numberOfLines = 0
        label.textColor = .black
        return label
    }()
    
    
    private lazy var postTimeAfter = {
        let label = UILabel()
        label.textColor = .lightGray
        label.font = .systemFont(ofSize: 14)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(postimageView)
        contentView.addSubview(postTitleLabel)
        contentView.addSubview(postTextLabel)
        contentView.addSubview(postTimeAfter)
        
        setupConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(_ model: PostModel) {
        postimageView.image = model.postImage
        postTitleLabel.text = model.postTitle
        postTextLabel.text = model.postText
        postTimeAfter.text = model.postTimeAfter
    }
    
    private func setupConstraints() {
        //ImageView
        postimageView.snp.makeConstraints { make in
            make.height.equalTo(50)
            make.width.equalTo(50)
            make.left.equalTo(contentView.snp.left).offset(16)
            make.top.equalTo(contentView.snp.top).offset(16)
        }
        postTitleLabel.snp.makeConstraints { make in
            make.left.equalTo(postimageView.snp.right).offset(16)
            make.top.equalTo(contentView.snp.top).offset(16)
            make.right.equalTo(postTimeAfter.snp.left)
            make.bottom.equalTo(postTextLabel.snp.top).offset(-8)
        }
        postTimeAfter.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top).offset(16)
            make.right.equalTo(contentView.snp.right).offset(-16)
        }
        postTextLabel.snp.makeConstraints { make in
            make.left.equalTo(postimageView.snp.right).offset(16)
            make.bottom.equalTo(contentView.snp.bottom).offset(-16)
            make.right.equalTo(contentView.snp.right).offset(-16)
        }
        
    }
    
    
    
}

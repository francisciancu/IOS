//
//  NasaNewTableViewCell.swift
//  News
//
//  Created by user215931 on 9/16/22.
//

import UIKit

class NasaNewTableViewCell: UITableViewCell{
    static let cellId = "NasaNewTableViewCell"
    let titleLable = UILabel()
    let dateLable = UILabel()
    let accessoryImageView = UIImageView()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    func setUp(with model: Item){
        titleLable.text = model.title
        dateLable.text = model.date
    }
    
    
    
    override var reuseIdentifier: String?{
        return NasaNewTableViewCell.cellId    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension NasaNewTableViewCell {
    func configure () {
        titleLable.font = UIFont.systemFont(ofSize: 17)
        titleLable.numberOfLines = 2
        dateLable.font = UIFont.systemFont(ofSize: 12)
        dateLable.numberOfLines = 1
        
        dateLable.textColor = UIColor.secondaryLabel
        accessoryImageView.tintColor = UIColor.secondaryLabel
        accessoryImageView.contentMode = UIView.ContentMode.scaleAspectFit
        accessoryImageView.image = UIImage(systemName: "arrowtriangle.left")
        
        contentView.addSubview(titleLable)
        contentView.addSubview(dateLable)
        contentView.addSubview(accessoryImageView)
        
        titleLable.translatesAutoresizingMaskIntoConstraints = false
        titleLable.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 5).isActive = true
        titleLable.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 5).isActive = true

        dateLable.translatesAutoresizingMaskIntoConstraints = false
        dateLable.topAnchor.constraint(equalTo: titleLable.bottomAnchor,constant: 5).isActive = true
        dateLable.leftAnchor.constraint(equalTo: contentView.leftAnchor,constant: 5).isActive = true
        dateLable.rightAnchor.constraint(equalTo: titleLable.rightAnchor,constant: -5).isActive = true
        dateLable.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5).isActive = true
        
        accessoryImageView.translatesAutoresizingMaskIntoConstraints = false
        accessoryImageView.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 5).isActive = true
        accessoryImageView.leftAnchor.constraint(equalTo: titleLable.rightAnchor,constant: 10).isActive = true
        accessoryImageView.rightAnchor.constraint(equalTo: contentView.rightAnchor,constant: -5).isActive = true
        accessoryImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5).isActive = true
        accessoryImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
    }}

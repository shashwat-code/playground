//
//  playCollectionViewCell.swift
//  collectionView
//
//  Created by Shashwat on 03/10/21.
//

import UIKit

class playCollectionViewCell: UICollectionViewCell {
    static let identifier = "play"
    
    var label: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemGreen
        label.tintColor = .black
        label.text = "shashwat"
       // label.font.withSize(34)
        return label
    }()
    
    var image: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "clock.badge.checkmark")
        image.clipsToBounds = true
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(image)
        contentView.addSubview(label)
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        image.frame = CGRect(x: 0, y: 0, width: contentView.frame.size.width, height: contentView.frame.size.height-20)
        label.frame = CGRect(x: 0, y: image.frame.size.height + 5 , width: contentView.frame.size.width, height: 10)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

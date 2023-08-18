//
//  CharacterCell.swift
//  RickAndMorty1221
//
//  Created by Aliaksandr Pustahvar on 17.08.23.
//

import UIKit

class CharacterCell: UICollectionViewCell {
    
     let characterImage = UIImageView()
     let characterName = UILabel()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpCell()
        
        characterImage.translatesAutoresizingMaskIntoConstraints = false
        characterName.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            characterImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            characterImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            characterImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            characterImage.heightAnchor.constraint(equalToConstant: (contentView.frame.width - 16)),
            
            characterName.topAnchor.constraint(equalTo: characterImage.bottomAnchor, constant: 20),
            characterName.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            characterName.heightAnchor.constraint(equalToConstant: 22),
            characterName.widthAnchor.constraint(equalToConstant: contentView.frame.width - 16)
        ])
    }
    
    private func setUpCell() {
        backgroundColor = UIColor.cellbackgroundColor
        layer.cornerRadius = 12
        
        characterImage.frame = CGRect(origin: .zero , size: .init(width: contentView.frame.width - 16, height: contentView.frame.width - 16))
        characterImage.contentMode = .scaleAspectFit
        characterName.clipsToBounds = true
        characterImage.layer.cornerRadius = 12
        
        characterName.textAlignment = .center
        characterName.font = UIFont.systemFont(ofSize: 17, weight: .semibold)
        characterName.adjustsFontSizeToFitWidth = true
        characterName.textColor = .white
        
        contentView.addSubview(characterImage)
        contentView.addSubview(characterName)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        characterImage.image = nil
    }
}

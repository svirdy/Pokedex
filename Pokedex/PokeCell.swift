//
//  PokeCell.swift
//  Pokedex
//
//  Created by Sachin Virdy on 11/5/15.
//  Copyright © 2015 Sachin Virdy. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    @IBOutlet weak var thumbnailImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
    }
    
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        
        nameLabel.text = self.pokemon.name.capitalizedString
        thumbnailImage.image = UIImage(named: "\(self.pokemon.pokedexId)")
    }
}

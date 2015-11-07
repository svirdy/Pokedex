//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by Sachin Virdy on 11/6/15.
//  Copyright © 2015 Sachin Virdy. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    var pokemon: Pokemon!

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var defenseLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var pokedexIdLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var currentEvolutionImage: UIImageView!
    @IBOutlet weak var nextEvolutionImage: UIImageView!
    @IBOutlet weak var evolutionLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = pokemon.name
        mainImage.image = UIImage(named: "\(pokemon.pokedexId)")
        
        pokemon.downloadPokemonDetails { () -> () in
            // this will be called after download has completed
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonPressed(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }

}

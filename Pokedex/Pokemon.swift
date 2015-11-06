//
//  Pokemon.swift
//  Pokedex
//
//  Created by Sachin Virdy on 11/5/15.
//  Copyright © 2015 Sachin Virdy. All rights reserved.
//

import Foundation

class Pokemon {
    private var _name: String!
    private var _pokedexId: Int!
    
    var name: String {
        return _name
    }
    
    var pokedexID: Int {
        return _pokedexId
    }
    
    init(name: String, pokedexId:Int) {
        self._name = name
        self._pokedexId = pokedexId
    }
}
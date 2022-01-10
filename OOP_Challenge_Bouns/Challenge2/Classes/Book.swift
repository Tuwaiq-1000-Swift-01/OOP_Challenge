//
//  Book.swift
//  Challenge2
//
//  Created by Aisha Ali on 1/10/22.
//

import Foundation

class Book:BookStore{

    
    
    private var category: String


    override init() {
      self.category = "Fiction"
      super.init()
    }
    
    func bookType()-> String{
      return "\(category)"
    }
    
}

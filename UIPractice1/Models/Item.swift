//
//  Item.swift
//  UIPractice1
//
//  Created by MD Tanvir Alam on 3/12/20.
//

import Foundation
import SwiftUI

struct Item:Identifiable{
    var id = UUID().uuidString
    var image:String
    var title:String
    var price:String
    var color:Color
    var detailes:String
}

var items: [Item] = [
    Item(  image: "dounot", title: "Sweet Soda", price: "85", color:Color.Mytheme.color4, detailes: "This is the most sweet Soda ever"),
    Item(  image: "dounot", title: "Sweet Soda", price: "85", color:Color.Mytheme.color2, detailes: "This is the most sweet Soda ever"),
    Item(  image: "dounot", title: "Sweet Soda", price: "85", color:Color.Mytheme.color3, detailes: "This is the most sweet Soda ever"),
    Item(  image: "dounot", title: "Sweet Soda", price: "85", color:Color.Mytheme.color1, detailes: "This is the most sweet Soda ever"),
]

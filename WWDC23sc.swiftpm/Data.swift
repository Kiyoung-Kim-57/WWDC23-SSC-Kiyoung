//
//  List.swift
//  WWDC23sc
//
//  Created by 김기영 on 2023/04/05.
//

import Foundation
import SwiftUI

struct VegetableType: Identifiable, Hashable {
    var id = UUID()
    var type: String
    var image: String
    var vegetables: [Vegetable]?
}

struct Vegetable: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var image: String
}


struct VegetableModel {
    
    let data = [
        VegetableType(
            type: "Cook!",
            image: "carrot",
            vegetables:
                [
                    Vegetable(name: "Carrots", image: "carrot"),
                    Vegetable(name: "Potatoes", image: "potato"),
                    Vegetable(name: "Beets", image: "beet"),
                    Vegetable(name: "Sweet Potatoes", image: "sweet-potato"),
                    Vegetable(name: "Turnips", image: "turnip")
                ]
        ),
        VegetableType(
            type: "Leafy Greens",
            image: "spinach",
            vegetables:
                [
                    Vegetable(name: "Spinach", image: "spinach"),
                    Vegetable(name: "Kale", image: "kale"),
                    Vegetable(name: "Lettuce", image: "lettuce"),
                    Vegetable(name: "Swiss Chard", image: "swiss-chard")
                ]
        ),
        VegetableType(
            type: "Other Vegetables",
            image: "mushroom",
            vegetables: [
                Vegetable(name: "Tomatoes", image: "tomato"),
                Vegetable(name: "Mushrooms", image: "mushroom"),
                Vegetable(name: "Zucchini", image: "zucchini"),
                Vegetable(name: "Bell Peppers", image: "bell-pepper")
            ]
            ),
        VegetableType(
            type: "hello",
            image: "mushroom",
            vegetables: [
                Vegetable(name: "Tomatoes", image: "tomato"),
                Vegetable(name: "Mushrooms", image: "mushroom"),
                Vegetable(name: "Zucchini", image: "zucchini"),
                Vegetable(name: "Bell Peppers", image: "bell-pepper")
                ]
        )
    ]
}

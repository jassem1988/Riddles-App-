//
//  Riddle.swift
//  Riddles
//
//  Created by Jassem Al-Buloushi on 8/16/20.
//  Copyright © 2020 Jassem Al-Buloushi. All rights reserved.
//

import Foundation

struct RiddleModel {
    var id = UUID()
    var name: String
    var answer: String
}

struct RiddlesList {
    
    var riddles = [RiddleModel]()
    
    init() {
        riddles.append(RiddleModel(name: "What has to be broken before you can use it?", answer: "An egg"))
        riddles.append(RiddleModel(name: "I’m tall when I’m young, and I’m short when I’m old. What am I?", answer: "A candle"))
        riddles.append(RiddleModel(name: "What month of the year has 28 days?", answer: "All of them"))
        riddles.append(RiddleModel(name: "What is full of holes but still holds water?", answer: "A sponge"))
    }
}

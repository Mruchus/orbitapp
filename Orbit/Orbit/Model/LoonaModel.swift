//
//  LoonaModel.swift
//  Orbit
//
//  Created by mruchus on 26/10/2020.
//

import SwiftUI

//: - LOONA DATA MODEL

struct Loona: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var facts: [String]
}

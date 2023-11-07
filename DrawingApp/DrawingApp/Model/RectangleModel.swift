//
//  RectangleModel.swift
//  DrawingApp
//
//  Created by Se Eun Lee on 2023/11/06.
//

import Foundation

struct RectangleModel: Identifiable {
    var id = UUID()

    let width = 100
    let height = 100

    let r = Float.random(in: 0...1)
    let g = Float.random(in: 0...1)
    let b = Float.random(in: 0...1)

    var x: Int
    var y: Int

    init(maxWidth: Double, maxHeight: Double) {
        self.x = Int(Double.random(in: 0..<maxWidth))
        self.y = Int(Double.random(in: 0..<maxHeight))
    }
}

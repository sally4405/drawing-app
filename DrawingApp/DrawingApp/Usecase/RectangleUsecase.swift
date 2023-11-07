//
//  RectangleUsecase.swift
//  DrawingApp
//
//  Created by Se Eun Lee on 2023/11/06.
//

import UIKit

class RectangleUsecase: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func drawRectangle() {
        let screen = UIScreen.main.bounds
        let screenWidth = screen.size.width
        let screenHeight = screen.size.height

        let model = RectangleModel(maxWidth: screenWidth, maxHeight: screenHeight)
        let rect = CGRect(x: model.x, y: model.y, width: model.width, height: model.height)
        let color = CGColor(red: CGFloat(model.r), green: CGFloat(model.g), blue: CGFloat(model.b), alpha: 0.5)


//        let context = UIGraphicsGetCurrentContext()
//        context?.setLineWidth(5.0)
//        UIColor.red.set()
//        context?.addRect(rect)
//        context?.setFillColor(color)
//        context?.strokePath()

        self.draw(rect)
    }

    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        context?.addRect(rect)
        context?.setFillColor(red: 255, green: 0, blue: 0, alpha: 0.5)
        //        context?.setFillColor(color)
        context?.fillPath()
    }

    // select
    func select(_ id: UUID) {
        let context = UIGraphicsGetCurrentContext()
        context?.setLineWidth(5.0)
        UIColor.red.set()
//        context?.addRect(rect)
        context?.strokePath()
    }
}

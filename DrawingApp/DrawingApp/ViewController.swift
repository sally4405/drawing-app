//
//  ViewController.swift
//  DrawingApp
//
//  Created by Se Eun Lee on 2023/11/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var addRectangleButton: UIButton!
    @IBOutlet weak var addDrawingButton: UIButton!
//    var rectangleUsecase: RectangleUsecase?
//    let rectangleUsecase = RectangleUsecase()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func addRectangleButtonAction(_ sender: UIButton) {
//        rectangleUsecase.drawRectangle()

        let screen = UIScreen.main.bounds
        let screenWidth = screen.size.width
        let screenHeight = screen.size.height - addRectangleButton.frame.height

        let rectangleViewModel = RectangleViewModel(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
        self.view.addSubview(rectangleViewModel)

        let model = RectangleModel(maxWidth: screenWidth, maxHeight: screenHeight)
        let rect = CGRect(x: model.x, y: model.y, width: model.width, height: model.height)
        let rectangleUsecase = RectangleUsecase(frame: rect)
//        rectangleUsecase.draw(rect)
//        self.view.addSubview(rectangleUsecase)
        rectangleUsecase.drawRectangle()

    }

    @IBAction func addDrawingButtonAction(_ sender: UIButton) {
    }
}


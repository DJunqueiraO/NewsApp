//
//  WheaterView.swift
//  News
//
//  Created by Josicleison on 21/10/22.
//

import UIKit

class WheaterView: UIViewController {
    
    private let label = Create.label("Afeganistao, Rio de janeiro",
                                     font: Assets.font(30))
    
    private let topStack: UIStackView = {
        
        let topStack = UIStackView()
        topStack.axis = .vertical
        
        return topStack
    }()
    
    private let daysStack: UIStackView = {
        
        let daysStack = UIStackView()
        daysStack.distribution = .fillEqually
        
        return daysStack
    }()
    
    private let bottomStack: UIStackView = {
        
        let button = Create.button("Toca aqui") {_ in
            
            print("Toma!!")
        }
        
        let bottomStack = UIStackView(arrangedSubviews: [button])
        bottomStack.distribution = .fillEqually
        
        return bottomStack
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        title = "Wheater"
        
        view.backgroundColor = .systemRed
        view.addSubviews([label, topStack, daysStack, bottomStack])
        
        topStack.addArrangedSubviews([createStack(Assets.Images.cloudSun, 70)])
        
        daysStack.addArrangedSubviews([createStack(day: "TUE", Assets.Images.cloudSun, 70),
                                       createStack(day: "WED", Assets.Images.cloud, 23),
                                       createStack(day: "THU", Assets.Images.cloudDrizzle, 65),
                                       createStack(day: "FRI", Assets.Images.cloudSunBolt, 50),
                                       createStack(day: "SAT", Assets.Images.sunMax, 32)])
        
        label.translatesAutoresizingMaskIntoConstraints = false
        topStack.translatesAutoresizingMaskIntoConstraints = false
        daysStack.translatesAutoresizingMaskIntoConstraints = false
        bottomStack.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([

            label.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            label.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.7),

            topStack.leadingAnchor.constraint(equalTo: label.leadingAnchor),
            topStack.trailingAnchor.constraint(equalTo: label.trailingAnchor),
            topStack.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 35),

            daysStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            daysStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            daysStack.topAnchor.constraint(equalTo: topStack.bottomAnchor, constant: 35),

            bottomStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomStack.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomStack.topAnchor.constraint(equalTo: daysStack.bottomAnchor)
        ])
        
//        label.constraint(to: view.safeAreaLayoutGuide, [.centerX: 0,.top: 50])
//        label.constraint(by: [.width], multiplier: 0.7)
//
//        topStack.constraint(to: label, by: [.leading,.trailing])
//        topStack.constraint(to: label, with: [.top:.bottom], constant: 35)
//
//        daysStack.constraint(by: [.leading,.trailing])
//        daysStack.constraint(to: topStack, with: [.top:.bottom], constant: 35)
//
//        bottomStack.constraint(to: daysStack, with: [.top:.bottom])
//        bottomStack.constraint(by: [.leading,.trailing,.bottom])
    }
    
    private func createStack(day: String? = nil,
                             _ wheater: UIImage?,
                             _  temperature: Int) -> UIStackView {
        
        let imageView = Create.imageView(wheater,
                                         color: Assets.Colors.reverseDark)
        let label = Create.label("\(temperature)°",
                                 alignment: .center)
        
        if let day = day {
            
            label.font = Assets.font(40)
            
            let dayLabel = Create.label(day,
                                        font: Assets.font(20),
                                        alignment: .center)
            
            let stack = UIStackView(arrangedSubviews: [dayLabel, imageView, label])
            stack.axis = .vertical
            
            imageView.constraint(by: [.height], multiplier: 0.5)
            
            return stack
        }
        
        label.font = Assets.font(60)
        
        let stack = UIStackView(arrangedSubviews: [imageView, label])
        stack.axis = .vertical
        
        imageView.constraint(by: [.height], multiplier: 0.65)
        
        return stack
    }
}

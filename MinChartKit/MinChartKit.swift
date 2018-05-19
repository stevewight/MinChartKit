//
//  MinChartKit.swift
//  Charted
//
//  Created by Steve on 5/19/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit

public struct MinChartKit {
    var data = [Double]()
    var color:UIColor = .darkGray
    
    init(data:[Double]) {
        self.data = data
    }
    
    init(data:[Double], color:UIColor) {
        self.data = data
        self.color = color
    }
    
    func line(_ line:MinLine) {
        LineFactory(
            chart: line,
            data: data,
            color: color
        ).make()
    }
    
    func bar(_ bar:MinBar) {
        BarFactory(
            chart: bar,
            data: data,
            color: color
        ).make()
    }
    
}

//
//  BarFactory.swift
//  c01ns
//
//  Created by Steve on 3/4/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit
import Charts

struct BarFactory: ChartFactory {
    var chart:ChartViewBase
    var data: [Double]
    var color: UIColor
    
    func buildEntry(index: Double, value: Double)->ChartDataEntry {
        return BarChartDataEntry(x: index, y: value)
    }
    
    func buildSet(entries:[ChartDataEntry])->ChartDataSet {
        return BarChartDataSet(values: entries, label: "")
    }
    
    func buildData()->ChartData {
        return BarChartData()
    }
}

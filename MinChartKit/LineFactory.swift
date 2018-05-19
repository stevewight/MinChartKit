//
//  LineFactory.swift
//  c01ns
//
//  Created by Steve on 1/26/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit
import Charts

struct LineFactory: ChartFactory {
    var chart:ChartViewBase
    var data: [Double]
    var color: UIColor
    
    func buildEntry(index:Double, value:Double)->ChartDataEntry {
        return ChartDataEntry(x: index, y: value)
    }
    
    func buildSet(entries:[ChartDataEntry])->ChartDataSet {
        let set = LineChartDataSet(values: entries, label: "")
        set.drawCirclesEnabled = false
        return set
    }
    
    func buildData()->ChartData {
        return LineChartData()
    }
}

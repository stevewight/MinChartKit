//
//  Chartable.swift
//  c01ns
//
//  Created by Steve on 5/19/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit
import Charts

protocol BarLineChartable {
    func setUp(chart:BarLineChartViewBase)
    func setUpXAxis(chart:BarLineChartViewBase)
    func setUpLeftAxis(chart:BarLineChartViewBase)
    func setUpRightAxis(chart:BarLineChartViewBase)
}

extension BarLineChartable {
    func setUp(chart:BarLineChartViewBase) {
        setUpXAxis(chart:chart)
        setUpLeftAxis(chart:chart)
        setUpRightAxis(chart:chart)
        
        chart.noDataText = ""
        chart.legend.enabled = false
        chart.doubleTapToZoomEnabled = false
        chart.dragEnabled = false
        chart.chartDescription?.enabled = false
    }
    
    func setUpXAxis(chart:BarLineChartViewBase) {
        chart.xAxis.drawLabelsEnabled = false
        chart.xAxis.drawGridLinesEnabled = false
        chart.xAxis.drawAxisLineEnabled = false
        chart.xAxis.drawLimitLinesBehindDataEnabled = false
        chart.xAxis.granularityEnabled = true
        chart.xAxis.granularity = 1.0
    }
    
    func setUpLeftAxis(chart:BarLineChartViewBase) {
        chart.leftAxis.drawLabelsEnabled = false
        chart.leftAxis.drawGridLinesEnabled = false
        chart.leftAxis.drawAxisLineEnabled = false
    }
    
    func setUpRightAxis(chart:BarLineChartViewBase) {
        chart.rightAxis.drawLabelsEnabled = false
        chart.rightAxis.drawGridLinesEnabled = false
        chart.rightAxis.drawAxisLineEnabled = false
    }
}

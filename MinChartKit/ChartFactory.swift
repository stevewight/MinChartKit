//
//  ChartFactory.swift
//  c01ns
//
//  Created by Steve on 5/18/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit
import Charts

protocol ChartFactory {
    var chart:ChartViewBase { get set }
    var data:[Double] { get set }
    var color:UIColor { get set }
    init(chart:ChartViewBase,data:[Double],color:UIColor)
    func make()
    func buildEntries()->[ChartDataEntry]
    func setData(set:ChartDataSet)
    func buildEntry(index:Double,value:Double)->ChartDataEntry
    func buildSet(entries:[ChartDataEntry])->ChartDataSet
    func buildData()->ChartData
}

extension ChartFactory {
    func make() {
        let entries = buildEntries()
        let set = buildSet(entries: entries)
        set.colors = [color]
        setData(set: set)
    }
    
    func buildEntries()->[ChartDataEntry] {
        return data.enumerated().map { i,v in
            buildEntry(index: Double(i), value: v)
        }
    }
    
    func setData(set:ChartDataSet) {
        let data = buildData()
        data.addDataSet(set)
        data.setDrawValues(false)
        chart.data = data
    }
}

//
//  MinLine.swift
//  c01ns
//
//  Created by Steve on 1/30/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit
import Charts

public class MinLine: LineChartView, BarLineChartable {

    public init() {
        super.init(frame: .zero)
        self.setUp(chart: self)
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUp(chart: self)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setUp(chart: self)
    }
    
    
}

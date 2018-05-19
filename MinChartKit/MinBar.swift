//
//  MinBar.swift
//  c01ns
//
//  Created by Steve on 3/4/18.
//  Copyright © 2018 Steve Wight. All rights reserved.
//

import UIKit
import Charts

class MinBar: BarChartView, BarLineChartable {
    
    init() {
        super.init(frame: .zero)
        self.setUp(chart: self)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setUp(chart: self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setUp(chart: self)
    }
    
}

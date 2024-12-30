//
//  PieChartRow.swift
//  PieChartLibrary
//
//  Created by iPHTech38 on 30/12/24.
//


import SwiftUI
#if canImport(AppKit) && !targetEnvironment(macCatalyst)
import AppKit
#endif
#if canImport(UIKit)
import UIKit
#endif
@available(iOS 13.0, *)

public struct PieChartRow : View {
    var data: [Double]
    var backgroundColor: Color
    var accentColor: Color
    var isDefaultColor:Bool = false
    var slices: [PieSlice] {
        var tempSlices:[PieSlice] = []
        var lastEndDeg:Double = 0
        let maxValue = data.reduce(0, +)
        for slice in data {
            let normalized:Double = Double(slice)/Double(maxValue)
            let startDeg = lastEndDeg
            let endDeg = lastEndDeg + (normalized * 360)
            lastEndDeg = endDeg
            tempSlices.append(PieSlice(startDeg: startDeg, endDeg: endDeg, value: slice, normalizedValue: normalized))
        }
        return tempSlices
    }
    public var body: some View {
        GeometryReader { geometry in
            ZStack{
                ForEach(0..<self.slices.count,id: \.self){ i in
                    
                    PieChartCell(rect: geometry.frame(in: .local), startDeg: self.slices[i].startDeg, endDeg: self.slices[i].endDeg, index: i, backgroundColor: self.isDefaultColor ? defaulfColorArray[i]: colorArray[i],accentColor: self.isDefaultColor ? defaulfColorArray[i]: colorArray[i])
                    
                    
                }
            }
        }
    }
}


@available(iOS 13.0, *)

let colorArray = [ Color.blue,Color.lightColor,Color.gray,Color.yellow,Color.skyBlue,Color.green,Color.darkBlue,Color.orange]

@available(iOS 13.0, *)
let defaulfColorArray = [ Color.orange,Color.yellow,Color.gray,Color.yellow,Color.skyBlue,Color.green,Color.darkBlue,Color.orange]



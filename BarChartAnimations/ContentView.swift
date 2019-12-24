//
//  ContentView.swift
//  BarChartAnimations
//
//  Created by Solomon on 12/23/19.
//  Copyright © 2019 TechSolomon. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // DOCS: Time of Day Picker
    // A default pickerSelectedItem Value yields the following:
    // 0 = Weekday, 1 = Afternoon, and 2 = Evening.
    
    @State var pickerSelectedItem = 0
    
    @State var dataPoints: [[CGFloat]] = [
        [50, 100, 150, 30, 40],
        [150, 100, 50, 200, 10],
        [10, 20, 30, 50, 100]
    ]
    
    var body: some View {
        ZStack {
            
            // Any, Light, & Dark Appearances derive from the Assets.xcassets class.
            Color("appBackground").edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Calorie Intake")
                    .font(.system(size: 34))
                    .fontWeight(.heavy)
                
                Picker(selection: $pickerSelectedItem, label: Text("")) {
                    Text("Weekday").tag(0)
                    Text("Afternoon").tag(1)
                    Text("Evening").tag(2)
                }.pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal, 24)
                
                // NOTE: Animations do not work when using a for each loop.
                HStack (spacing: 16) {
                    BarView(value: dataPoints[pickerSelectedItem][0])
                    BarView(value: dataPoints[pickerSelectedItem][1])
                    BarView(value: dataPoints[pickerSelectedItem][2])
                    BarView(value: dataPoints[pickerSelectedItem][3])
                    BarView(value: dataPoints[pickerSelectedItem][4])
                    
                }.padding(.top, 24)
                    .animation(.default)
            }
            
        }
    }
}

struct BarView: View {
    
    var value: CGFloat
    
    var body: some View {
        VStack {
            ZStack (alignment: .bottom) {
                Capsule().frame(width: 30, height: 200)
                    .foregroundColor(Color(#colorLiteral(red: 0.2509803922, green: 0.8862745098, blue: 1, alpha: 1)))
                Capsule().frame(width: 30, height: value)
                    .foregroundColor(.white)
            }
            Text("D").padding(.top, 8)
        }
    }
    
}

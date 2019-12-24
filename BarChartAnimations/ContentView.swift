//
//  ContentView.swift
//  BarChartAnimations
//
//  Created by Solomon on 12/23/19.
//  Copyright © 2019 TechSolomon. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var pickerSelectedItem = 0
    
    var body: some View {
        ZStack {
            
            Color(#colorLiteral(red: 0.3333333333, green: 0.9490196078, blue: 0.7529411765, alpha: 1)).edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Calorie Intake")
                    .font(.system(size: 34))
                    .fontWeight(.heavy)
                
                Picker(selection: $pickerSelectedItem, label: Text("")) {
                    Text("Weekday")
                    Text("Afternoon")
                    Text("Evening")
                }.pickerStyle(SegmentedPickerStyle())
            }
            
        }
    }
}

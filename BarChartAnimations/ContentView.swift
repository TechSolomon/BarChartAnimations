//
//  ContentView.swift
//  BarChartAnimations
//
//  Created by Solomon on 12/23/19.
//  Copyright © 2019 TechSolomon. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // A default pickerSelectedItem Value yields the following:
    // 0 = Weekday, 1 = Afternoon, and 2 = Evening.
    @State var pickerSelectedItem = 0
    
    var body: some View {
        ZStack {
            
            Color(#colorLiteral(red: 0.3333333333, green: 0.9490196078, blue: 0.7529411765, alpha: 1)).edgesIgnoringSafeArea(.all)
            
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
                
                HStack {
                    VStack {
                        ZStack (alignment: .bottom) {
                            Capsule().frame(width: 30, height: 200)
                                .foregroundColor(Color(#colorLiteral(red: 0.2509803922, green: 0.8862745098, blue: 1, alpha: 1)))
                            Capsule().frame(width: 30, height: 100)
                                .foregroundColor(.white)
                        }
                        Text("D").padding(.top, 8)
                    }
                }.padding(.top, 24)
            }
            
        }
    }
}

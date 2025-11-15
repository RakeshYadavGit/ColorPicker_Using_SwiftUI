//
//  ContentView.swift
//  CustomColorPicker
//
//  Created by Rakesh Yadav on 15/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("My Picker", systemImage: "hand.rays.fill") {
                MyPickerView()
            }
            
            Tab("System Picker", systemImage: "rectangle.and.hand.point.up.left") {
                SystemColorPIcker()
            }
        }
        .tint(.purple)
    }
}

#Preview {
    ContentView()
}

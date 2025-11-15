//
//  SystemColorPIcker.swift
//  CustomColorPicker
//
//  Created by Rakesh Yadav on 15/11/25.
//

import SwiftUI

struct SystemColorPIcker: View {
    @State private var color1: Color = .orange
    @State private var color2: Color = .pink
    @State private var color3: Color = .blue
    
    private let dim: CGFloat = 100
    
    var body: some View {
        RectangleView(color1: $color1, color2: $color2, color3: $color3)
        VStack {
            ColorPicker("Left Rectangle Color", selection: $color1)
            ColorPicker("Center Rectangle Color", selection: $color2)
            ColorPicker("Right Rectangle Color", selection: $color3)
        }
        .font(.headline)
        .foregroundStyle(.purple)
        .padding()
    }
}


#Preview {
    SystemColorPIcker()
}

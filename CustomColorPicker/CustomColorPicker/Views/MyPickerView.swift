//
//  MyPickerView.swift
//  CustomColorPicker
//
//  Created by Rakesh Yadav on 15/11/25.
//

import SwiftUI

struct MyPickerView: View {
    
    @State private var color1: Color = .orange
    @State private var color2: Color = .pink
    @State private var color3: Color = .blue
    
    private var colors: [Color] = [.green, .pink, .orange]
    private let dim: CGFloat = 100
    
    var body: some View {
        RectangleView(color1: $color1, color2: $color2, color3: $color3)
        
        MyColorPickerView(text: "Left Rectangle Color", selectedColor: $color1)
        MyColorPickerView(text: "Center Rectangle Color", selectedColor: $color2)
        MyColorPickerView(text: "Right Rectangle Color", selectedColor: $color3)
    }
}

struct MyColorPickerView: View {

    var text: String
    @Binding var selectedColor: Color
    
    
    private let randomColor: [Color] = [
        .red, .green, .blue, .yellow, .purple, .pink, .gray, .brown,
        .accentColor, .black, .cyan, .indigo, .mint, .primary, .secondary, .teal, .white
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(text)
                .font(.title)
                .fontWeight(.semibold)
                .foregroundStyle(.purple)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(randomColor, id: \.self) { color in
                        ColorCircle(color: color, isSelected: color == selectedColor)
                            .onTapGesture {
                                withAnimation {
                                    self.selectedColor = color
                                }
                            }
                    }
                }
                .padding(.horizontal)
            }
            .padding(.vertical)
            .background(
                Color
                    .gray.opacity(0.2)
                    .clipShape(.rect(cornerRadius: 10))
            )
        }
        .padding(.horizontal)
    }
}

struct ColorCircle: View {
    
    var color: Color
    var isSelected: Bool
    
    private var dim: CGFloat {
        isSelected ? 30 : 20
    }
    
    
    var body: some View {
        Circle()
            .fill(color)
            .frame(width: dim, height: dim)
    }
}


#Preview {
    MyPickerView()
}

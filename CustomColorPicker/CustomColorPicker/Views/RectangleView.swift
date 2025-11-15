//
//  RectangleView.swift
//  CustomColorPicker
//
//  Created by Rakesh Yadav on 15/11/25.
//

import SwiftUI

struct RectangleView: View {
    @Binding var color1: Color
    @Binding var color2: Color
    @Binding var color3: Color
    
    private let dim: CGFloat = 100
    
    var body: some View {
        HStack {
            VStack(spacing: 20) {
                Image(systemName: "arrowshape.down")
                    .font(.largeTitle)
                    .foregroundStyle(color1)
                RoundedRectangle(cornerRadius: 20)
                    .fill(color1)
                    .frame(width: dim, height: dim)
            }
            
            VStack(spacing: 20) {
                Image(systemName: "arrowshape.down")
                    .font(.largeTitle)
                    .foregroundStyle(color2)
                RoundedRectangle(cornerRadius: 20)
                    .fill(color2)
                    .frame(width: dim, height: dim)
            }
            
            VStack(spacing: 20) {
                Image(systemName: "arrowshape.down")
                    .font(.largeTitle)
                    .foregroundStyle(color3)
                RoundedRectangle(cornerRadius: 20)
                    .fill(color3)
                    .frame(width: dim, height: dim)
            }
        }
    }
}

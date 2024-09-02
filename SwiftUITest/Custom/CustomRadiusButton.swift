//
//  CustomRadiusButton.swift
//  SwiftUITest
//
//  Created by 강석호 on 9/2/24.
//

import SwiftUI

private struct CustomRadiusButton: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity)
            .font(.title2)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.capsule)
            .bold()
            .padding(.horizontal, 20)
    }
}


extension View {
    
    func asCustomRadiusButton() -> some View {
        modifier(CustomRadiusButton())
    }
}


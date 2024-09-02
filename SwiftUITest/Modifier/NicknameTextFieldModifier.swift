//
//  NicknameTextFieldModifier.swift
//  SwiftUITest
//
//  Created by 강석호 on 9/2/24.
//

import SwiftUI

struct NicknameTextFieldModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 16))
            .padding()
            .textInputAutocapitalization(.never)
            .frame(maxWidth: .infinity)
            .background(.white)
    }
}

extension View {
    func nicknameTextFieldModifier() -> some View {
        modifier(NicknameTextFieldModifier())
    }
}

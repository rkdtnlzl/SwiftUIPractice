//
//  OnboardingView.swift
//  SwiftUITest
//
//  Created by 강석호 on 9/2/24.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 60) {
                Spacer()
                Image("launch")
                Image("launch2")
                NavigationLink("시작하기") {
                    NicknameSettingView()
                }
                .asCustomRadiusButton()
                .padding(.bottom, 30)
            }
        }
    }
}

#Preview {
    OnboardingView()
}

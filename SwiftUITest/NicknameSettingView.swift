//
//  ProfileSettingView.swift
//  SwiftUITest
//
//  Created by 강석호 on 9/2/24.
//

import SwiftUI

struct NicknameSettingView: View {
    
    @State private var nicknameText = ""
    
    let mbtiOptions = ["E", "S", "T", "J", "I", "N", "F", "P"]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            NavigationView {
                VStack(spacing: 30) {
                    ProfileImageView(imageName: "profile_0",
                                     destination: AnyView(Text("New View"))
                    )
                    VStack {
                        TextField("닉네임을 입력하세요 :)", text: $nicknameText)
                            .nicknameTextFieldModifier()
                        Rectangle()
                            .frame(maxWidth: .infinity, maxHeight: 3)
                            .foregroundColor(.gray)
                    }
                    .padding(.horizontal, 30)
                }
            }
            HStack() {
                Text("MBTI")
                    .font(.title2)
                    .bold()
                    .padding(.trailing, 50)
                LazyVGrid(columns: columns, spacing: 30) {
                    ForEach(mbtiOptions, id: \.self) { option in
                        Text(option)
                            .font(.headline)
                            .foregroundColor(.white)
                            .frame(width: 50, height: 50)
                            .background(Circle().fill(Color.blue))
                            .padding(.horizontal, 70)
                        
                    }
                }
                
            }
        }
    }
}

#Preview {
    NicknameSettingView()
}

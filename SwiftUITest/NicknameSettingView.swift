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
        GridItem(.flexible(), spacing: 50),
        GridItem(.flexible(), spacing: 50),
        GridItem(.flexible(), spacing: 50),
        GridItem(.flexible(), spacing: 50)
    ]
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                ProfileImageView(imageName: "profile_0",
                                 destination: AnyView(Text("New View"))
                )
                VStack(spacing: 10) {
                    TextField("닉네임을 입력하세요 :)", text: $nicknameText)
                        .nicknameTextFieldModifier()
                    Rectangle()
                        .frame(maxWidth: .infinity, maxHeight: 3)
                        .foregroundColor(.gray)
                }
                .padding(.horizontal, 30)
                
                HStack(alignment: .top, spacing: 20) {
                    Text("MBTI")
                        .font(.title2)
                        .bold()
                        .padding(.leading, 40)
                    Spacer()
                    
                    LazyVGrid(columns: columns, spacing: 10) {
                        ForEach(mbtiOptions, id: \.self) { option in
                            Text(option)
                                .font(.headline)
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50)
                                .background(Circle().fill(.blue))
                        }
                    }
                    .padding(.trailing, 50)
                }
                
                Spacer()
                
                NavigationLink("완료") {
                    ProfileSettingView()
                }
                .asCustomRadiusButton()
                .padding(.bottom, 30)
            }
        }
    }
}

#Preview {
    NicknameSettingView()
}

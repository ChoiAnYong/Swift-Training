//
//  Onboarding.swift
//  FastSwiftBasic
//
//  Created by 최안용 on 10/29/23.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        VStack {
            Text("What's New in Photos")
                .font(.system(size: 35)) //글자 크기 설정
                .bold()
                .padding()
                .padding(.top, 50)
            
            HStack {
                Image(systemName: "person.2")
                    .resizable()
                    .scaledToFit()
                    .frame(width:35)
                    .padding(.horizontal, 7 )
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("Shared Library")
                        .font(.headline)
                    Text("Combine photos and videos with the people Combine photos and videos with the people Combine photos and videos with the people")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            
            HStack {
                Image(systemName: "square.on.square.badge.person.crop")
                    .resizable()
                    .scaledToFit()
                    .frame(width:35)
                    .padding(.horizontal, 7 )
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("Shared Library")
                        .font(.headline)
                    Text("Combine photos and videos with the people Combine photos and videos with the people Combine photos and videos with the people")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            .padding(.vertical)
            
            HStack {
                Image(systemName: "sparkles.square.fill.on.square")
                    .resizable()
                    .scaledToFit()
                    .frame(width:35)
                    .padding(.horizontal, 7 )
                    .foregroundColor(.blue)
                
                VStack(alignment: .leading) {
                    Text("Merge Duplicates")
                        .font(.headline)
                    Text("Combine photos and videos with the people Combine photos and videos with the people Combine photos and videos with the people")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.trailing)
            }
            
            Spacer() //공간을 넣어줌
            
            Button(action: {
                
            }, label: {
                Text("Continue")
                    //.frame(maxWidth: .infinity)//화면의 길이에 상관없이 쭉 길어진다.
                    .padding()
                    .frame(width: 350)//크기를 직접 설정
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
            })
            .padding(.bottom, 60)//(띄울때 어디를 기준으로 할지, 얼마나 띄울지)
        }
    }
}

#Preview {
    Onboarding()
}

//
//  Setting.swift
//  FastSwiftBasic
//
//  Created by 최안용 on 10/29/23.
//

import SwiftUI

struct SettingInfo: Hashable {
    let title: String
    let systemName: String
    let backgroundColor: Color
    let forgroundColor: Color = .white
}

struct Setting: View {
    
    let data: [[SettingInfo]] = [[SettingInfo(title: "스크린 타임" ,
                                           systemName: "hourglass",
                                           backgroundColor:.purple)],
                               [SettingInfo(title: "일반" ,
                                           systemName: "gear",
                                           backgroundColor:.gray),
                               SettingInfo(title: "손쉬운 사용" ,
                                           systemName: "accessibility",
                                           backgroundColor:.blue),
                               SettingInfo(title: "개인정보 보호 및 보안" ,
                                           systemName: "hand.raised.fingers.spread.fill",
                                           backgroundColor:.blue)],
                               [SettingInfo(title: "암호" ,
                                           systemName: "key.fill",
                                           backgroundColor:.gray)]
    ]
    
    var body: some View {
        NavigationStack {
            List {
                //이미지와 텍스트가 더해진 것을 Lable이라고 한다.
//                Section {//섹션을 나눌 때 사용
//                    Label(
//                        title: { Text("스크린 타임") },
//                        icon: {
//                            Image(systemName: "hourglass")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 20, height: 20)
//                                .padding(.all, 7)
//                                .background(.purple)
//                                .foregroundColor(.white)
//                                .cornerRadius(6)
//                        }
//                    )
//                }
//                
//                Section {
//                    Label(
//                        title: { Text("일반") },
//                        icon: {
//                            Image(systemName: "gear")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 20, height: 20)
//                                .padding(.all, 7)
//                                .background(.gray)
//                                .foregroundColor(.white)
//                                .cornerRadius(6)
//                        }
//                    )
//                    Label(
//                        title: { Text("손쉬운 사용") },
//                        icon: {
//                            Image(systemName: "accessibility")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 20, height: 20)
//                                .padding(.all, 7)
//                                .background(.blue)
//                                .foregroundColor(.white)
//                                .cornerRadius(6)
//                        }
//                    )
//                    Label(
//                        title: { Text("개인정보 보호 및 보안") },
//                        icon: {
//                            Image(systemName: "hand.raised.fingers.spread.fill")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 20, height: 20)
//                                .padding(.all, 7)
//                                .background(.blue)
//                                .foregroundColor(.white)
//                                .cornerRadius(6)
//                        }
//                    )
//                }
//                
//                Section {
//                    Label(
//                        title: { Text("암호") },
//                        icon: {
//                            Image(systemName: "key.fill")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 20, height: 20)
//                                .padding(.all, 7)
//                                .background(.gray)
//                                .foregroundColor(.white)
//                                .cornerRadius(6)
//                        }
//                    )
//                }
                ForEach(data, id: \.self) { section in
                    Section {
                        ForEach(section, id: \.self) { item in
                            Label(
                                title: { Text(item.title) },
                                icon: { Image(systemName: item.systemName)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                        .padding(.all, 7)
                                        .background(item.backgroundColor)
                                        .foregroundColor(item.forgroundColor)
                                        .cornerRadius(6)
                                }
                            )
                        }
                    }
                }
            }.navigationTitle("설정")
        }
    }
}

#Preview {
    Setting()
}

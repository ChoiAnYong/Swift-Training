//
//  Navigation.swift
//  FastSwiftBasic
//
//  Created by 최안용 on 10/29/23.
//

import SwiftUI

struct Navigation: View {
    
    let titles = ["디테일뷰로 이동하기", "디테일뷰로 이동하기2"]
    let descriptions = ["데스티네이션 입니다.", "데스티네이션 입니다.2"]
    
    @State var showModal: Bool = false
    
    var body: some View {
        NavigationStack { //NavigationStack은 네비게이션이 어디로 갔을 지 어디로 갔는지 기록을 해주는 역할, 얘가 어디로 보내주지는 않는다
            List{
                ForEach([0,1], id: \.self) {index in
                    NavigationLink {
                        Text(descriptions[index])
                    } label: {
                        Text(titles[index])
                    }

                }
            }
            .toolbar(content: {
                ToolbarItem{
                    Button(action: {
                        showModal = true
                    }, label: {
                        Text("Add")
                    })
                }
            })
            .sheet(isPresented: $showModal, content: {
                Text("아이템 추가 페이지 입니다.")
            })
            .navigationTitle("네비게이션")
        }
    }
}

#Preview {
    Navigation()
}

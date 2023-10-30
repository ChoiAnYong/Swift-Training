//
//  Modal.swift
//  FastSwiftBasic
//
//  Created by 최안용 on 10/29/23.
//

import SwiftUI

struct Modal: View {
    
    @State var showModal: Bool = false
    
    var body: some View {
        VStack {
            Text("메일 페이지 입니다.")
            Button(action: {
                showModal = true
            }, label: {
                Text("Modal 화면 전환")
            })
        }
        .sheet(isPresented: $showModal, onDismiss: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=On Dismiss@*/{ }/*@END_MENU_TOKEN@*/, content: {
            Detail(isPresented: $showModal)
        })
    }
}

#Preview {
    Modal()
}

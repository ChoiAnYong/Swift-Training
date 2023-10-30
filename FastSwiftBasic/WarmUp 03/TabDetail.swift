//
//  TabDetail.swift
//  FastSwiftBasic
//
//  Created by 최안용 on 10/29/23.
//

import SwiftUI

struct TabDetail1: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            Text("This is detail")
        }
    }
}

struct TabDetail2: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            VStack {
                Text("This is detail")
                
                Button(action: {
                    
                }, label: {
                    Text("Continue")
                        .padding()
                        .background(.green)
                        .cornerRadius(10)
                })
            }
        }
    }
}

struct TabDetail3: View {
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            Text("This is detail")
        }
    }
}

#Preview {
    TabDetail1()
}

//
//  MyButton.swift
//  FastSwiftBasic
//
//  Created by 최안용 on 10/29/23.
//

import SwiftUI

struct MyButton: View {
    var buttonTitle: String
    var buttonColor: Color
    
    var body: some View {
        Button(action: {
            
        }, label: {
            Text(buttonTitle)
                .padding()
                .background(buttonColor)
                .foregroundColor(.white)
                .cornerRadius(10)
        })
        
    }
}

#Preview {
    MyButton(buttonTitle: "Button4", buttonColor: .brown)
}

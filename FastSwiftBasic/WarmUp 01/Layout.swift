//
//  Layout.swift
//  FastSwiftBasic
//
//  Created by 최안용 on 10/29/23.
//

import SwiftUI

struct Layout: View {
    var body: some View {
        VStack {//수직으로 배치
            Image(systemName: "pencil")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding()
            
            MyText(textTitle: "Text Element 1", textFont: .headline)
            MyText(textTitle: "Text Element 2", textFont: .subheadline)
            MyText(textTitle: "Text Element 3", textFont: .body)
            
            HStack{//수평으로 배치
                MyButton(buttonTitle: "Button 1", buttonColor: .blue)
                MyButton(buttonTitle: "Button 2", buttonColor: .cyan)
            }
            
            Button(action: {
                    
            }, label: {
                VStack{
                    Image(systemName:
                            "arrow.right.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
                    Text("Complex Button")
                }
                .foregroundColor(.white)
                .padding()
                .background(.orange)
                .cornerRadius(10)
            })
        }
    }
}



#Preview {
    Layout()
}

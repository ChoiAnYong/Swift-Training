//
//  MyText.swift
//  FastSwiftBasic
//
//  Created by 최안용 on 10/29/23.
//

import SwiftUI

struct MyText: View {
    var textTitle: String
    var textFont: Font
    
    var body: some View {
        Text(textTitle)
            .font(textFont)
            .padding()
    }
}

#Preview {
    MyText(textTitle: "text1", textFont: .body)
}

//
//  SimpleView.swift
//  WarmUp
//
//  Created by 최안용 on 10/28/23.
//

import SwiftUI

struct SimpleView: View {
    var body: some View {
        VStack {
            Image(systemName: "pencil")
                .resizable() //
                .scaledToFit() //이미지 비율이 맞도록 함
                .frame(width: 200, height: 200) //이미 사이즈 변경
            
            Text("헤드라인 입니다")
                .font(.headline) //폰트 변경
                .bold() //글씨 진하게
            
            Text("서브헤드라인 입니다.")
                .font(.subheadline)
                .padding() //컨텐츠의 여백 설정, 위, 아래, 왼쪽, 오른쪽 설정할 수 있다.
            
            Text("바디 입니다.")
                .font(.body)
                .padding()
            
            Button(action: {
                //
            }, label: {
                Text("Click Me")
                    .padding()//순서에 따라 모양이 다르게 된다.(전후관계가 상관 있는 것과 없는 것이 있으니 유의!)
                    .background(.blue) //배경 색상 설정
                    .foregroundColor(.white) //글자 색
                    .cornerRadius(10) //코너를 깍아줌
                    .bold()
            })
        }
    }
}

#Preview {
    SimpleView()
}

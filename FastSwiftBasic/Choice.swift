//
//  Choice.swift
//  FastSwiftBasic
//
//  Created by 최안용 on 10/8/23.
//

import SwiftUI

struct Choice: View {
    var leeo: People? = People(name: "Leeo", mbti: MBTI(name: "ENFP"))
    var bami = People(name: "bami", petName: "coco")
    var berry = People(name: "berry", petName: "cookie")
    
    var body: some View {
        VStack {
            
            if let leeoMbtiName = leeo?.mbti?.name {
                Text(leeoMbtiName)
            } else {
                Text("No Mbti Name")
            }
            
            if let petName = bami.petName {
                Text("이름은 \(bami.name) 애완동물 이름은 \(petName)")
            } else {
                Text("이름은 \(bami.name) 애완동물 이름은 없다.")
            }
            
            if let petName = berry.petName {
                Text("이름은 \(berry.name) 애완동물 이름은 \(petName)")
            } else {
                Text("이름은 \(berry.name) 애완동물 이름은 없다.")
            }
        }
    }
}

struct People {
    let name: String
    var petName: String?
    var mbti: MBTI?
}

struct MBTI {
    let name: String?
}


#Preview {
    Choice()
}

//
//  Half.swift
//  FastSwiftBasic
//
//  Created by 최안용 on 10/8/23.
//

import SwiftUI


struct Half: View {
    
    let myCar = Car(name: "리어카", owner: "리이오")
    @ObservedObject var myKar = Kar(name: "리어카2", owner: "리이오2")
    
    var body: some View {
        Text("\(myKar.name)의 주인은 \(myKar.owner)입니다.")
        
        Button(action: {
            let broCar = myKar
            broCar.name = "동생차"
            broCar.owner = "동생"
            
            myKar.sayHi()
        }, label: {
            Text("출발")
        })
    }
}

struct Car {
    var name: String
    var owner: String
    
    func sayHi() {
        print("hi \(owner)")
    }
}

class Kar: ObservableObject {
    @Published var name: String
    var owner: String
    
    func sayHi() {
        print("hi \(owner)")
    }
    init(name: String, owner: String) {
        self.name = name
        self.owner = owner
    }
}

#Preview {
    Half()
}


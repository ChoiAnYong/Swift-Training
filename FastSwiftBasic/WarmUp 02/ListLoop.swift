//
//  ListLoop.swift
//  FastSwiftBasic
//
//  Created by 최안용 on 10/29/23.
//

import SwiftUI

struct Fruit: Hashable {
    let name: String
    let matchFruitName: String
    let price: Int
}

struct ListLoop: View {
    
    @State var favoriteFruits = [
        Fruit(name: "Apple",
              matchFruitName: "Banana",
              price: 1000),
        
        Fruit(name: "Banana",
              matchFruitName: "Banana",
              price: 3000),
        
        Fruit(name: "Cherry",
              matchFruitName: "Double Kiwi",
              price: 4000),
        
        Fruit(name: "Double Kiwi",
              matchFruitName: "Elder berry",
              price: 2400),
         
        Fruit(name: "Elder berry",
              matchFruitName: "Double Kiwi",
              price: 8000),
    ]
    
    @State var fruitName: String = ""
    
    var body: some View {
        NavigationStack{
            
            VStack {
                
                HStack {
                    TextField("insert fruit name", text: $fruitName)
                    Button(action: {
                        favoriteFruits.append(Fruit(name: fruitName, matchFruitName: "Apple", price: 1000))
                    }, label: {
                        Text("insert")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    })
                }
            }
            
            List {//10개까지만 들어갈 수 있다. 반복문을 쓰면 더 넣을 수 있다.
                ForEach(favoriteFruits, id: \.self) { fruit in
                    VStack(alignment: .leading) {
                        Text("name: \(fruit.name)")
                        Text("matchFruitName: \(fruit.matchFruitName)")
                        Text("price: \(fruit.price)")
                    }
                }.onDelete(perform: { indexSet in
                    favoriteFruits.remove(atOffsets: indexSet)
                })
                .navigationTitle("Fruit List")
            }
        }
    }
}

#Preview {
    ListLoop()
}

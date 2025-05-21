//
//  worldclock.swift
//  clock
//
//  Created by maple on 5/19/25.
//

import SwiftUI

struct litem : Identifiable{
    var id = UUID()
    var name : String
    var hour : Int
    var min : Int
}
struct worldclock: View {
    @State var list : [litem] = [
        litem(name: "Tokyo", hour: 23, min: 25),
        litem(name: "London", hour: 3,min: 25)
    ]
    var body: some View {
        NavigationView {
            List{
                ForEach(list){item in
                    HStack{
                        Text(item.name)
                        Spacer()
                        Text("\(item.hour > 12 ? item.hour - 12 : item.hour):\(item.min)")
                            .font(.largeTitle)
                        Text(item.hour > 12 ? "PM" : "AM")
                    }
                    
                }
            }.listStyle(InsetListStyle())
                .toolbar{
                    ToolbarItem(placement: .topBarLeading){
                        component(title:"편집"){
                            print("편집 기능 추가 예정")
                        }
                    }
                    ToolbarItem(placement : .topBarTrailing){
                        Button{
                            
                        }label: {
                            Image(systemName: "plus")
                                .foregroundColor(.orange)
                        }
                    }
                }
                .navigationTitle("세계 시계")
        }
    }
}

#Preview {
    worldclock()
}

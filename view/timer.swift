//
//  timer.swift
//  clock
//
//  Created by maple on 5/19/25.
//

import SwiftUI

struct timer: View {
    @State var hh = ""
    @State var mm = ""
    @State var ss = ""
    
    let h = Array(0...23)
    let m = Array(0...59)
    let s = Array(0...59)
    var body: some View {
        
        NavigationStack {
            VStack{
                HStack{
                    Picker("hh",selection:$hh){
                        ForEach(h,id:\.self){item in
                            Text("\(item)")
                                .tag(String(item))
                            
                        }
                    }
                    .pickerStyle(.wheel)
                    .padding(.top,0)
                    
                    
                    Text("시간")
                    Picker("hh",selection:$mm){
                        ForEach(m,id:\.self){item in
                            Text("\(item)")
                                .tag(String(item))
                            
                        }
                    }
                    .pickerStyle(.wheel)
                    Text("분")
                    Picker("hh",selection:$ss){
                        ForEach(s,id:\.self){item in
                            Text("\(item)")
                                .tag(String(item))
                            
                        }
                    }
                    .pickerStyle(.wheel)
                    Text("초")
                }
                HStack{
                    Button{
                        
                    }label: {
                        ZStack{
                            Image(systemName: "circle.fill")
                                .resizable()
                                .frame(width: 70,height: 70)
                                .foregroundColor(.gray.opacity(0.5))
                            Text("초기화")
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(50)
                    
                    Spacer()
                    
                    Button{
                        
                    }label: {
                        ZStack{
                            Image(systemName: "circle.fill")
                                .resizable()
                                .frame(width: 70,height: 70)
                                .foregroundColor(.green.opacity(0.5))
                            
                            Text("시작")
                                .foregroundColor(.green)
                        }
                    }.padding(50)
                    
                    
                }
                
            }
            
            
            .navigationTitle("타이머")
        }
    }
    
}

#Preview {
    timer()
}

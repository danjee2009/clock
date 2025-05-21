import SwiftUI
struct imer : Identifiable{
    var id = UUID()
    var hour : Int
    var min : Int
    var tog : Bool
}
struct arlam: View {
    @State var list : [imer] = [
        imer(hour: 9, min: 37, tog: false)
    ]
    
    var body : some View{
        NavigationView{
            List{
                ForEach($list){$item in
                    HStack{
                        Text("\(item.hour):\(item.min)")
                            .font(.largeTitle)
                        Text(item.hour > 12 ? "AM" : "PM")
                        Spacer()
                        Toggle("",isOn: $item.tog)
                        
                    }
                }
            }.listStyle(InsetListStyle())
                .toolbar{
                    ToolbarItem(placement: .topBarLeading){
                        Button{
                            
                        }label: {
                            Text("편집")
                        }
                    }
                    ToolbarItem(placement : .topBarTrailing){
                        Button{
                            
                        }label: {
                            Image(systemName: "plus")
                        }
                        
                    }
                    
                }
                .foregroundColor(.orange)
                .navigationTitle("알람")
        }
    }
}

#Preview {
    arlam()
}

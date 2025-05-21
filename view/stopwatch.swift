import SwiftUI

struct Stopwatch: View {
    @State var Time = 0
    var body: some View {
        NavigationView {
            VStack{
                Text("00:00.00")
                
                    .font(.system(size: 60))
                    .padding(.top,100)
                    .padding(.bottom,0)
                HStack{
                    
                    Button{
                        
                    }label: {
                        ZStack{
                            Image(systemName: "circle.fill")
                                .resizable()
                                .frame(width: 70,height: 70)
                                .foregroundColor(.gray.opacity(0.5))
                            Text("랩")
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
                Divider()
                
                
                
            }
            
            
            .navigationTitle("스톱워치")
        }
    }
    
}
#Preview {
    Stopwatch()
}

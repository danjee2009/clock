//
//  component.swift
//  clock
//
//  Created by maple on 5/21/25.
//

import SwiftUI

struct component: View {
    let title : String
    let action : () -> Void
    var body : some View{
        Button{
            action()
        }label: {
            Text(title)
                .foregroundColor(.orange)
        }
    }
}

#Preview {
    component(title : "편집"){
        print("편집")
    }
}

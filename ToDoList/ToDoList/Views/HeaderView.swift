//
//  HeaderView.swift
//  ToDoList
//
//  Created by 奈木野諭吉 on 2023/11/16.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack{
            //Header
            ZStack{
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(Color.blue)
                    .rotationEffect(Angle(degrees: 15))

                VStack{
                    Text("To Do List")
                        .font(.system(size: 50))
                        .bold()
                        .foregroundColor(Color.white)
                    
                    Text("Get things done")
                        .font(.system(size: 30))
                        .foregroundColor(Color.white)
                }
                .padding(.top, 30)
            }
            .frame(width: UIScreen.main.bounds.width * 3, height: 300)
            .offset(y: -100)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}

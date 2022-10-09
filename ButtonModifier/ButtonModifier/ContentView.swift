//
//  ContentView.swift
//  ButtonModifier
//
//  Created by 渡邊魁優 on 2022/10/09.
//

import SwiftUI

struct ContentView: View {
    @State var actionView = "ボタンが押されていません"
    
    var body: some View {
        VStack {
            Spacer()
            Text(actionView)
            
            Spacer()
            
            HStack {
                //ボタンにモディファイア
                Button(action: {
                    actionView = "一つ目のボタンが押されました"
                }) {
                    Text("一つ目のボタン")
                }
                .padding()
                .background(Color.yellow)
                .shadow(color: Color.gray, radius: 10, x: 0, y: 10)
                
                //テキストにモディファイア
                Button(action: {
                    actionView = "二つ目のボタンが押されました"
                }) {
                    Text("二つ目のボタン")
//                        .font()
                        .padding()
                        .foregroundColor(Color.yellow)
//                        .frame()
                        .background(Color.blue)
                        .clipShape(Capsule())
                }
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

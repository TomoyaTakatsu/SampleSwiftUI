//
//  ContentView.swift
//  SampleSwiftUI
//
//  Created by Tomoya takatsu on 2023/02/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var outputText = "Hello,World!!"
    
    var body: some View {
        
        VStack{
            Text(outputText)
                .font(.largeTitle)
                .padding()
            
            Button(action: {
                outputText = "押下後のテキスト"
                
                print("デバッグ用sample:" + outputText)
            }) {
                Text("切り替えボタン")
                    .foregroundColor(Color.white)
                    .padding(.all)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.blue/*@END_MENU_TOKEN@*/)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iphone 8")
            ContentView()
                .previewDevice("iPad mini")
        }
    }
}

//
//  ContentView.swift
//  swiftui ScrollView
//
//  Created by Ayush Sharma on 03/10/22.
//

import SwiftUI
struct CustomText: View{
    let text: String
    var body: some View{
        Text(text)
    }
            init(_ text : String){
            print("something new")
            self.text = text
    }
}

struct ContentView: View {
    var body: some View {
//
//        ScrollView(.horizontal, showsIndicators: false, content: {
//            HStack {
//            ForEach(0..<50) { index in
//                Rectangle()
//                    .fill(Color .red)
//                    .frame(width: 300, height: 300)
//            }
//        }
//
//
//    })


        ScrollView {
            LazyVStack{
                ForEach(0..<50) { index in
                    ScrollView(.horizontal, showsIndicators: true, content: {
                        LazyHStack{
                            ForEach(0..<20){ index in
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.white)
                                    .frame(width: 200 , height: 200)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                        
                    })
                    
                    
                    
                    
                }
            }
            
        }



} }
                   
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




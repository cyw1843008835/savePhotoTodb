//
//  ContentView.swift
//  SavePhotoToApp
//
//  Created by yw c on 2020/01/18.
//  Copyright © 2020 yw c. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State  var showImagePicker: Bool = false
       @State var image:Image? = nil
    var body: some View {
         NavigationView {
        VStack{
        image?.resizable()
        .scaledToFit()
        .clipShape(Circle())
        Button(action: {
            self.showImagePicker = true
        }) {
            Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
        }
            NavigationLink(destination: SecondView(showImagePicker: self.$showImagePicker,image: self.$image)) {
                               Text("画面遷移する")
                           }
        }.sheet(isPresented: self.$showImagePicker){
            PhotoCaptureView(showImagePicker: self.$showImagePicker, image: self.$image)
        }
        }
    }
}
struct SecondView: View {
    @Binding  var showImagePicker: Bool
    @Binding var image:Image?
    var body: some View {
        VStack{
        image?.resizable()
        .scaledToFit()
        .clipShape(Circle())
        Button(action: {
            self.showImagePicker = true
        }) {
            Text(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/)
        }
        Text("画面遷移できました")
        }.sheet(isPresented: self.$showImagePicker){
            PhotoCaptureView(showImagePicker: self.$showImagePicker, image: self.$image)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

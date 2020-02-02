//
//  SwiftUIView.swift
//  SavePhotoToApp
//
//  Created by yw c on 2020/01/19.
//  Copyright © 2020 yw c. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
     @State var showSecond = false
     @State var showThird = false

     var body: some View {
         VStack(spacing: 50) {
             Text("FirstView")
             Button("to SecondView") {
                 self.showSecond = true
             }
             .sheet(isPresented: $showSecond) {
                 VStack(spacing: 50) {
                     Text("SecondView")
                     Button("to ThirdView") {
                         self.showThird = true
                     }
                     .sheet(isPresented: self.$showThird) {
                         VStack(spacing: 50) {
                             Text("ThirdView")
                             Button("back") {
                                 self.showThird = false
                             }
                             Button("back to FirstView") {
                                 self.showThird = false
                                 self.showSecond = false
                             }
                         }
                     }
                     Button("back") {
                         self.showSecond = false
                     }
                 }
             }
         }
     }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

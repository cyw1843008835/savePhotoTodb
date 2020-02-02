import SwiftUI
import Foundation
//
//struct ContentView1: View {
//    @State  var showImagePicker: Bool = false
//    @State  var image:Image? = nil
//    @State var showsecondView: Bool = false
//    @State var show:Bool = false
//    var body: some View {
//
//
//        ZStack {
//            VStack{
//                image?.resizable()
//                    .scaledToFit()
//                    .clipShape(Circle())
//                Button("take photo"){
//                    self.showImagePicker = true
//                    //self.showEntryView.toggle()
//                }.padding()
//
//                Button(action: {
//                    self.showsecondView.toggle()
//                }) {
//                    Text("firstView")
//                }
//
//            }
//
//            .sheet(isPresented: self.$showImagePicker){
//                PhotoCaptureView(showImagePicker: self.$showImagePicker, image: self.$image)
//                }
//            if self.showsecondView {
//                SecondView(showsecondView: self.$showsecondView,showImagePicker:self.$showImagePicker)
//                    .frame(maxWidth: .infinity, maxHeight: .infinity)
//                    .background(Color.red)
//                    .animation(.easeInOut)
//                    .transition(.move(edge: .bottom))
//
//            }}
//        }
//}
//struct SecondView1: View {
//    @Binding var showsecondView: Bool
//    @Binding var showImagePicker: Bool
//    @State  var image:Image? = nil
//    var body: some View {
//        ZStack(alignment: .leading) {
//            VStack {
//                Button(action: {
//                    self.showsecondView = false
//                }) {
//                    Text("dismiss")
//                }
//
//                Text("secondView")
//                image?.resizable()
//                    .scaledToFit()
//                    .clipShape(Circle())
//
//                Button("take photo"){
//
//                    self.showImagePicker = true
//                    //self.showEntryView.toggle()
//                }.padding()
//                //            .sheet(isPresented: self.$showImagePicker){
//                //            PhotoCaptureView(showImagePicker: self.$showImagePicker, image: self.$image)
//                //            }
//
//
//            }
//
//            if self.showImagePicker {
//                PhotoCaptureView(showImagePicker: self.$showImagePicker, image: self.$image)
//                    .frame(maxWidth: .infinity, maxHeight: .infinity)
//                    .background(Color.red)
//                    .animation(.easeInOut)
//                    .transition(.move(edge: .bottom))
//                }
//            }
//    }
//}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

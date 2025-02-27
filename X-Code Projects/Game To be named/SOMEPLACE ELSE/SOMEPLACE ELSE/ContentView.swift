
import SwiftUI

struct ContentView: View {
   @State private var colourChange = false
    @State private var sizeChange = false
    
    var body: some View{
        Image(systemName: "flag.fill")
            .font(.system(size: 200))
            .foregroundColor(colourChange ? .red : .black)
            .scaleEffect(sizeChange ? 1.5 : 1)
            .animation(.default)
            .onTapGesture {
                self.colourChange.toggle()
            }
            .onLongPressGesture {
                self.sizeChange.toggle()
            }
    }
     
}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//            .animation(<#T##animation: Animation?##Animation?#>, value: <#T##Equatable#>)
//    }
//}   


import SwiftUI

struct NewBookView: View {
  @State var title: String = ""
  @State var author: String = ""
  @State var readMe: Bool = true
  
  var body: some View {
    VStack(spacing: 18.0) {
      Text("Got a new book?")
        .font(.title)
      
      Divider()
      
      VStack(alignment: .leading) {
        Text("Title:")
        TextField("Title", text: $title)
          .textFieldStyle(RoundedBorderTextFieldStyle())
      }
      
      Divider()
      
      VStack(alignment: .leading) {
        Text("Author:")
        TextField("Author", text: $author)
          .textFieldStyle(RoundedBorderTextFieldStyle())
      }
      
      Divider()
      
      Toggle("Read Me?", isOn: $readMe)
        .toggleStyle(SwitchToggleStyle(tint: .accentColor))
      
      Spacer()
    }
    .padding()
    // TODO: - Add a button to the navigation bar
  }
}

struct NewBookView_Previews: PreviewProvider {
  static var previews: some View {
    NewBookView()
  }
}

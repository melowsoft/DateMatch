

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
               Spacer()
            
            VStack {
                Text("YOU ARE GOING \n TO DELETE:")
                    .font(.custom("PaytoneOne-Regular", size: 22))
                    .multilineTextAlignment(.center)
                    .frame(width: 200, height: 80)
                
                ProfileCard(username: "Margaret", age: 28, expiryDate: 7, progress: "65", profilePict: "Bitmap", statusPict: "heart2")
                    .padding()
                    .background(Color(#colorLiteral(red: 1, green: 0.9254901961, blue: 0.9294117647, alpha: 1)))
                .cornerRadius(50)
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color.red, lineWidth: 1)
                )
                    .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                
                Text("TO UNLOCK \n THE CHAT WITH:")
                .font(.custom("PaytoneOne-Regular", size: 22))
                    .multilineTextAlignment(.center)
                    .frame(width: 200, height: 80)
                   
                
                ProfileCard(username: "David", age: 31, expiryDate: 7, progress: "65", profilePict: "Bitmap2", statusPict: "hearrt")
                    .padding()
                    .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                  
                       .cornerRadius(50)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 50)
                                            .stroke(Color.black.opacity(0.1), lineWidth: 1)
                                )
                
                HStack(alignment: .center) {
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                }
                .padding(.top, 10)
                .font(.system(size: 15, weight: .light))
                .foregroundColor(Color.black.opacity(0.4))
                
                
                HStack {
                    Text("Deleting Margaret won't let you chat with her again. Are you sure about deleting here")
                        .font(.custom("Nunito-Regular", size: 15))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.black.opacity(0.5))
                        .frame(height: 70)
                    
                    
                }
                .padding(.top, 10)
                .frame(width: 250)
                
                HStack {
                    ActionButton(title: "Yes, let's do it", textColor: Color.red)
                }
                .padding()
                
            }
            .padding(.top, 5)
            .padding(.trailing, 10)
            .padding(.leading, 10)
            .background(Color.white)
          
            .clipShape(RoundedRectangle(cornerRadius: 50, style: .continuous))
            .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
            

            
            HStack {
                ActionButton(title: "Cancel", textColor: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
            }
            .padding(.top, 10)
            
             Spacer()
        }
        .padding()
 
    .background(
        LinearGradient(gradient: Gradient(colors: [ Color(#colorLiteral(red: 0.5819430428, green: 0.5985246646, blue: 1, alpha: 1)), Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))]), startPoint: .topLeading, endPoint: .bottomTrailing)
        )
            .edgesIgnoringSafeArea(.all)
    }


}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

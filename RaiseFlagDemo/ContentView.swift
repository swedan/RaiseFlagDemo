//
//  ContentView.swift
//  RaiseFlagDemo
//
//  Created by msweidan on 20/06/2023.
//

import SwiftUI

struct ContentView: View {
    @State var flag: CGFloat = 0.0
    @State var anthem_text: String = "Ishy Bilady Anthem"
    var body: some View {
        VStack{
            Text("\(Int(flag))")
            HStack(spacing:0){
                Rectangle()
                    .frame(width:20,height: 500)
                    .cornerRadius(12)
                Text("🇦🇪")
                    .font(.system(size: 140))
                    .padding(.horizontal,-14)
                    .offset(x: 0, y: flag * -10)
                    .shadow(radius: 10)
            }
            HStack (alignment:.bottom){
                Button {
                    withAnimation(.spring()) {
                        if flag <= 19 {
                            flag += 1
                        }
                        
                        if flag == 3 {
                            anthem_text = "Long live my country, the unity of our Emirates lives."
                        } else if (flag == 6) {
                            anthem_text = "You've lived for the nation's faith of Islam and guide of the Quran. I've made you stronger in God's name, O homeland."
                        } else if (flag == 12){
                            anthem_text = "My country, my country, my country, my country."
                        } else if (flag == 14){
                            anthem_text = "God protected you from the evils of time. We have sworn to build and work – work earnestly, work earnestly."
                        } else if (flag == 15){
                            anthem_text = "As long as we live, we will be sincere."
                        } else if (flag == 18) {
                            anthem_text = "The safety has lasted, the flag has lived, O our Emirates!"
                        } else if (flag == 19){
                            anthem_text = "The symbol of Arabism: we all sacrifice for you and give you our blood; For you we sacrifice with our souls, O homeland!"
                        }
                    }
                } label: {
                    Text("Rasing Flag")
                        .padding(.all,10)
                        .background(.blue)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
                
                Button {
                    withAnimation {
                        if (flag != 0){
                            flag = 0
                            anthem_text = "Ishy Bilady Anthem"
                        }
                    }

                } label: {
                    Text("Reset")
                        .foregroundColor(.red)
                        .underline()
                }
                .buttonStyle(.plain)

                
            }
            Text("\(anthem_text)")
                .frame(maxWidth:.infinity,alignment:.topLeading)
                .frame(height:105)
                .padding()
        }
        
/*
 Long live my country, the unity of our Emirates lives.
 You've lived for the nation's faith of Islam and guide of the Quran.
 I've made you stronger in God's name, O homeland.

 My country, my country, my country, my country.
 God protected you from the evils of time.
 We have sworn to build and work –
 work earnestly, work earnestly.
 As long as we live, we will be sincere.

 The safety has lasted, the flag has lived, O our Emirates!
 The symbol of Arabism: we all sacrifice for you and give you our blood;
 For you we sacrifice with our souls, O homeland!
 */

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

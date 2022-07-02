//
//  ContentView.swift
//  C_W_5.1
//
//  Created by MAC on 02/07/2022.
//

import SwiftUI

struct ContentView: View {
    var emoji = ["😅", "🤪", "🤣", "😎", "👨‍💻", "🤓", "🥳", "😡"]
    @State var selectedEmoji = ""
    var body: some View {
        VStack{
        Text("اختار الإيموجي الي يعبر عنك اليوم")
                .font(.system(size: 40))
                .multilineTextAlignment(.center)
            Text("\(selectedEmoji)")
                .font(.system(size: 50))
                .frame(width: 150, height: 100)
            ScrollView(.horizontal){
        HStack{
            ForEach(emoji, id: \.self){
                emojis in
                Text("\(emojis)")
                    .font(.system(size: 50))
                    .padding()
                    .onTapGesture {
                        selectedEmoji = ("\(emojis)")
                    }
            }
            
        }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

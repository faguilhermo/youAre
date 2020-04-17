//
//  ContentView.swift
//  youAreApp
//
//  Created by Fabrício Guilhermo on 17/04/20.
//  Copyright © 2020 Fabrício Guilhermo. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    let buttonSize: CGFloat = 79
    @State var phrase = "teste"
    
    var body: some View {
        ZStack {
            Color("background")
                .edgesIgnoringSafeArea(.all)

            VStack {
                TitleView()
                Spacer()
            }

            // MARK: - Phrase
            Spacer()
            Text(phrase)
                .font(.custom("Pecita", size: 36))
                .foregroundColor(Color("font"))
                .padding(.leading, 20)
                .padding(.trailing, 20)
            Spacer()

            VStack {
                Spacer()

                // MARK: - Refresh button
                Button(action: updatePhrase) {
                    ZStack {
                        Circle()
                            .fill(Color("refresh"))
                            .frame(width: buttonSize, height: buttonSize)
                            .shadow(color: Color(#colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1490196078, alpha: 1)), radius: 2, x: 0, y: 5)
                        Image(uiImage: #imageLiteral(resourceName: "refreshArrow"))
                    }
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
    }

    func updatePhrase() {
        let phraseList = PhrasesModel.phrasesList
        phrase = phraseList.randomElement() ?? "lovely"
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//
//  ContentView.swift
//  youAreApp
//
//  Created by Fabrício Guilhermo on 17/04/20.
//  Copyright © 2020 Fabrício Guilhermo. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    // MARK: - App constant size
    private let buttonSize: CGFloat = 79
    private let fontSize: CGFloat = 36
    private let highlighterSize = CGSize(width: 163, height: 13)


    // MARK: - Random var phrase
    @State private var phrase = "incredible"
    
    var body: some View {
        ZStack {
            Color("background")
                .edgesIgnoringSafeArea(.all)

            VStack {
                // MARK: - Title
                HStack
                {
                    ZStack
                    {
                    Rectangle()
                        .fill(Color("highlighter"))
                        .frame(width: highlighterSize.width, height: highlighterSize.height)
                        .padding(.top, 44)
                        .padding(.leading, 20)

                    Text("You are...")
                        .foregroundColor(Color("font"))
                        .padding(.top, 26)
                        .padding(.leading, 20)
                    }

                    Spacer()
                }
                .font(.custom("Pecita", size: fontSize))
                Spacer()
            }

            // MARK: - Phrase
            Text(phrase)
                .font(.custom("Pecita", size: fontSize))
                .foregroundColor(Color("font"))
                .padding(.leading, 20)
                .padding(.trailing, 20)

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

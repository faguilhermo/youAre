//
//  RefreshButtonView.swift
//  youAreApp
//
//  Created by Fabrício Guilhermo on 17/04/20.
//  Copyright © 2020 Fabrício Guilhermo. All rights reserved.
//

import SwiftUI

struct RefreshButtonView: View {

    let buttonSize: CGFloat = 79

    var body: some View {

        Button(action: {
//            PhraseView().text = PhrasesModel.getRandom(phrases: PhrasesModel().phrases)
        }) {
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

struct RefreshButtonView_Previews: PreviewProvider {
    static var previews: some View {
        RefreshButtonView().previewLayout(.fixed(width: 440, height: 100))
    }
}

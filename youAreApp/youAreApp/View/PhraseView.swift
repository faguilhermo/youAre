//
//  PhraseView.swift
//  youAreApp
//
//  Created by Fabrício Guilhermo on 17/04/20.
//  Copyright © 2020 Fabrício Guilhermo. All rights reserved.
//

import SwiftUI

struct PhraseView: View {

    @State var text = ""

    var body: some View {
        Text(text)
            .font(.custom("Pecita", size: 36))
            .foregroundColor(Color("font"))
            .padding(.leading, 20)
            .padding(.trailing, 20)
    }
}

struct PhraseView_Previews: PreviewProvider {
    static var previews: some View {
        PhraseView().previewLayout(.fixed(width: 440, height: 160))
    }
}

//
//  TitleView.swift
//  youAreApp
//
//  Created by Fabrício Guilhermo on 17/04/20.
//  Copyright © 2020 Fabrício Guilhermo. All rights reserved.
//

import SwiftUI

struct TitleView: View {

    let highlighterSize = CGSize(width: 163, height: 13)

    var body: some View {
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
        .font(.custom("Pecita", size: 36))
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView().previewLayout(.fixed(width: 440, height: 80))
    }
}

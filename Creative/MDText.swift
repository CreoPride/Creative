//
//  MDText.swift
//  Creative
//
//  Created by Konstantin Fomenkov on 31.05.2022.
//

import SwiftUI

struct MDText: View {
    var body: some View {
        Text("McDonald's")
            .font(.system(size: 40, weight: .black, design: .default))
            .foregroundColor(.white)
            .kerning(-2)
            .shadow(radius: 5)
    }
}

struct MDText_Previews: PreviewProvider {
    static var previews: some View {
        MDText()
            .background(.white)
    }
}

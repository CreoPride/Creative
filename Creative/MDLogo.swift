//
//  MDLogo.swift
//  Creative
//
//  Created by Konstantin Fomenkov on 30.05.2022.
//

import SwiftUI

struct MDLogo: View {
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.height, geometry.size.width)
            let middle = size / 2
            let farLine = size * 0.99
            let nearLine = size * 0.01

            Path { path in
                path.move(to: CGPoint(x: nearLine, y: farLine))

                path.addQuadCurve(
                    to: CGPoint(x: middle, y: middle * 0.9),
                    control: CGPoint(x: middle * 0.4, y: nearLine * -30)
                )
                path.addQuadCurve(
                    to: CGPoint(x: farLine, y: farLine),
                    control: CGPoint(x: middle * 1.6, y: nearLine * -30)
                )
                path.addLine(to: CGPoint(x: farLine * 0.88, y: farLine))

                path.addQuadCurve(
                    to: CGPoint(x: middle * 1.1, y: middle * 1.8),
                    control: CGPoint(x: middle * 1.4, y: nearLine * -50)
                )
                path.addLine(to: CGPoint(x: middle * 0.88, y: middle * 1.8))

                path.addQuadCurve(
                    to: CGPoint(x: nearLine * 12, y: farLine),
                    control: CGPoint(x: middle * 0.6, y: nearLine * -50)
                )
                path.closeSubpath()
            }
            .foregroundColor(.yellow)
        }
    }
}

struct MDLogo_Previews: PreviewProvider {
    static var previews: some View {
        MDLogo()
            .frame(width: 250, height: 250)
    }
}

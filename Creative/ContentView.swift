    //
    //  ContentView.swift
    //  Creative
    //
    //  Created by Konstantin Fomenkov on 30.05.2022.
    //

import SwiftUI

struct ContentView: View {

    @State private var buttonTaped = false

    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack {
                Spacer()
                ZStack {
                    MDLogo()
                        .shadow(color: .black, radius: 5, x: 5, y: 5)
                        .frame(width: 250, height: 300)
                        .rotation3DEffect(
                            .degrees(buttonTaped ? 720 : 0),
                            axis: (x: 0, y: 1, z: 0)
                        )
                        .scaleEffect(buttonTaped ? 1 : 0)
                        .animation(.easeInOut(duration: 2), value: buttonTaped)

                    MDText().offset(x: 40, y: 40)
                        .offset(x: buttonTaped ? 0 : 500, y: 0)
                        .rotation3DEffect(
                            .degrees(buttonTaped ? 360 : 270),
                            axis: (x: 0, y: 10, z: 0)
                        )
                        .animation(
                            .interpolatingSpring(
                                mass: 8,
                                stiffness: 15,
                                damping: 20,
                                initialVelocity: 1
                            ),
                            value: buttonTaped)
                }
                Spacer()
                VStack {
                    Button(action: { buttonTaped.toggle() }) {
                        Text("i'm lovin' it®")
                            .font(
                                .system(
                                    size: 38,
                                    weight: .heavy,
                                    design: .rounded
                                )
                            )
                            .foregroundColor(.black)
                    }
                    Text("☝ tap me ☝")
                        .foregroundColor(.white).bold()
                        .font(.system(size: 30))
                        .opacity(buttonTaped ? 0 : 1)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



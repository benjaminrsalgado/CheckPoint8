//
//  ContentView.swift
//  CheckPoint8
//
//  Created by Benjamin Rojo on 04/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


protocol Edificio {
    var habitaciones: Int { get set}
    var costo: Int { get set }
    var agenteMoviliario: String { get }
    func resumen()
}

extension Edificio {
    func resumen() {
        print(" Esta es  un \(type(of:self)) el vendedor es \(agenteMoviliario) esta propiedad cuenta con \(habitaciones) habitaciones y tiene un costo de \(costo)")
    }
}

struct Casa: Edificio {
    var habitaciones : Int
    var costo: Int
    var agenteMoviliario: String
}

struct Oficina: Edificio {
    var habitaciones : Int
    var costo: Int
    var agenteMoviliario: String
}

let paraCasa = Casa(habitaciones: 6, costo: 2000000, agenteMoviliario: "Pedro Sanches")
let paraOficina = Oficina(habitaciones: 1, costo: 100000, agenteMoviliario: "Pedro Sanches")



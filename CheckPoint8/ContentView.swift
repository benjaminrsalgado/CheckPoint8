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

protocol Persona {
    var nombre: String { get }
    func decirHola()
}

extension Persona {  // ✅ Implementación predeterminada
    func decirHola() {
        print("Hola, soy \\(nombre)")
    }
}

struct Empleado: Persona {  // ❌ No necesita escribir decirHola()
    let nombre: String
}

let empleado = Empleado(nombre: "Carlos")
empleado.decirHola() // Imprime: Hola, soy Carlos


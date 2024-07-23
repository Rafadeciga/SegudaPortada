//
//  ContentView.swift
//  segudaPortada
//
//  Created by Rafael Deciga Garcia on 27/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack(spacing: 10) {
                    Image("logo_upiita") // Asegúrate de tener esta imagen en tus Assets
                        .resizable()
                        .frame(width: 70, height: 80)
                        .padding(.leading, 10)
                    
                    Spacer()
                    
                    Text("INSTITUTO\nPOLITÉCNICO\nNACIONAL")
                        .foregroundColor(Color(hex: "#B0A00C"))
                        .font(.system(size: 22))
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    Image("logo-ipn") // Asegúrate de tener esta imagen en tus Assets
                        .resizable()
                        .frame(width: 70, height: 80)
                        .padding(.trailing, 10)
                }
                .padding(.top, 10)
                
                Text("UNIDAD PROFESIONAL INTERDISCIPLINARIA EN INGENIERÍA Y TECNOLOGÍAS AVANZADAS")
                    .font(.system(size: 22))
                    .foregroundColor(Color(hex: "#B0A00C"))
                    .background(Color(hex: "#213589"))
                    .padding(.top, 10)
                    .multilineTextAlignment(.center)
                
                Image("logo_jardinera") // Asegúrate de tener esta imagen en tus Assets
                    .resizable()
                    .frame(height: 100)
                    .padding(.top, 10)
                
                Text("Deciga Garcia Rafael\nIngeniería Telemática\nGrupo 2TM9")
                    .font(.system(size: 30))
                    .bold()
                    .italic()
                    .foregroundColor(.white)
                    .background(Color(hex: "#771e51"))
                    .multilineTextAlignment(.center)
                
                Image("alumno2") // Asegúrate de tener esta imagen en tus Assets
                    .resizable()
                    .frame(height: 255)
                    .frame(width: 200)
                    .padding(.top, 10)
                
                Text("Programación de Dispositivos Móviles\n")
                    .font(.system(size: 20))
                    .bold()
                    .italic()
                    .foregroundColor(.white)
                    .background(Color(hex: "#771e51"))
                    .multilineTextAlignment(.center)
            }
        }
        .background(Color(hex: "#fefefe"))
    }
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double(rgb & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

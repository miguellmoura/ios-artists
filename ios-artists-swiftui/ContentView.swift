//
//  ContentView.swift
//  ios-artists-swiftui
//
//  Created by Miguel Moura on 24/05/25.
//

import SwiftUI
import CoreData

struct ContentView: View {
    // obras de arte incluidas
    let obras: [ObraDeArte] = [
        ObraDeArte(titulo: "Painel de Azulejos", artista: "Poty Lazzarotto", ano: 1960, estilo: "Modernismo", imagemNome: "potylazaroto", descricao: "Um dos mais icônicos trabalhos de Poty Lazzarotto, esse painel retrata cenas cotidianas de Curitiba em azulejos, uma obra de grande valor histórico e cultural."),
        ObraDeArte(titulo: "Passeio público", artista: "Guido Viaro", ano: 1936, estilo: "Modernismo", imagemNome: "passpublico_viaro", descricao: "Obra que representa a paisagem do passeio público de Curitiba, destacando seus elementos naturais. Com uma técnica inovadora, Viaro buscou traduzir a essência local."),
        
        ObraDeArte(titulo: "Litoral Paranaense", artista: "Ricardo Krieger", ano: 1975, estilo: "Figurativo", imagemNome: "litoral", descricao: "Uma representação das belas paisagens do litoral paranaense, onde Krieger capturou a tranquilidade e beleza da natureza em cores vibrantes e texturas marcantes."),
        ObraDeArte(titulo: "Dama da Louça", artista: "Toto Lopes", ano: 1990, estilo: "Escultura", imagemNome: "loucacerta", descricao: "Escultura emblemática de Toto Lopes, retratando uma figura feminina de grande delicadeza, com detalhes que evocam a fragilidade e a beleza da porcelana. Feita com mais de 280 pratos"),
        ObraDeArte(titulo: "Painel de Azulejos", artista: "Poty Lazzarotto", ano: 1960, estilo: "Modernismo", imagemNome: "potylazaroto", descricao: "Um dos mais icônicos trabalhos de Poty Lazzarotto, esse painel retrata cenas cotidianas de Curitiba em azulejos, uma obra de grande valor histórico e cultural."),
        ObraDeArte(titulo: "Passeio público", artista: "Guido Viaro", ano: 1936, estilo: "Modernismo", imagemNome: "passpublico_viaro", descricao: "Obra que representa a paisagem do passeio público de Curitiba, destacando seus elementos naturais. Com uma técnica inovadora, Viaro buscou traduzir a essência local."),
    ]

    let colunas = [
        // cada item ocupa 150 pixels
        GridItem(.adaptive(minimum: 150))
    ]

    var body: some View {
        NavigationView {
            // laxyvgrid em scrollview para tornar as imagens responsivas
            ScrollView {
                LazyVGrid(columns: colunas, spacing: 20) {
                    ForEach(obras) { obra in
                        NavigationLink(destination: DetalhesObraView(obra: obra)) {
                            VStack {
                                // vstack para alinhar verticalmente a imagem, titulo e artista da obra
                                Image(obra.imagemNome)
                                    .resizable()
                                    .aspectRatio(1, contentMode: .fit)
                                    .padding()
                                    .background(Color.gray.opacity(0.2))
                                    .clipShape(RoundedRectangle(cornerRadius: 10))

                                Text(obra.titulo)
                                    .font(.headline)
                                Text(obra.artista)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                            .padding()
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            .shadow(radius: 5)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .padding()
            }
            .navigationTitle("Obras de Arte")
        }
    }
}
//
//#Preview {
//    ContentView()
//}

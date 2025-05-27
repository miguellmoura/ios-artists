//
//  DetalhesObraView.swift
//  ios-artists-swiftui
//
//  Created by Miguel Moura on 24/05/25.
//

import SwiftUI

struct DetalhesObraView: View {
    let obra: ObraDeArte

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Image(obra.imagemNome)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .padding()

                Text(obra.titulo)

                Text("Artista: \(obra.artista)")

                Text("Ano: \(obra.ano)")

                Text("Estilo: \(obra.estilo)")

                Text("Descrição:")
                    
                Text(obra.descricao)
                    
            }
            .padding()
        }
    }
}

#Preview {

        let obraExemplo = ObraDeArte(
            titulo: "Mona Lisa",
            artista: "Leonardo da Vinci",
            ano: 1503,
            estilo: "Renascentismo",
            imagemNome: "photo.on.rectangle.angled",
            descricao: "O sorriso enigmático de Mona Lisa é uma das obras de arte mais famosas do mundo."
        )

        
        NavigationView {
            DetalhesObraView(obra: obraExemplo)
        }
}

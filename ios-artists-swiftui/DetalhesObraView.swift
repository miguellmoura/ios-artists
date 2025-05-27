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
            VStack(alignment: .leading, spacing: 20) {
                Image(obra.imagemNome)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 10))

                Text(obra.titulo)
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("Artista: (obra.artista)")
                    .font(.title2)

                Text("Ano: (obra.ano)")
                    .font(.title3)

                Text("Estilo: (obra.estilo)")
                    .font(.title3)

                Text("Descrição:")
                    .font(.headline)
                Text(obra.descricao)
                    .font(.body)
            }
            .padding()
        }
        .navigationTitle(obra.titulo)
        .navigationBarTitleDisplayMode(.inline)
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

//
//  ObraDeArte.swift
//  ios-artists-swiftui
//
//  Created by Miguel Moura on 24/05/25.
//

import SwiftUI

struct ObraDeArte: Identifiable {
    let id = UUID()
    let titulo: String
    let artista: String
    let ano: Int
    let estilo: String
    let imagemNome: String
    let descricao: String
}

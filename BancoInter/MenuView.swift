//
//  MenuView.swift
//  BancoInter
//
//  Created by Leonardo Fernandes on 03/05/22.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        LazyVGrid(columns: [
                    GridItem(.flexible(minimum: 100, maximum: 200)),
                    GridItem(.flexible(minimum: 100, maximum: 200)),
                    GridItem(.flexible(minimum: 100, maximum: 200))
        ], spacing: 10, content: {
            ForEach(ItensMenu) { item in
                Button(action: {}, label: {
                    VStack {
                        Image(systemName: item.image)
                            .font(.system(size: 27))
                            .foregroundColor(Color(#colorLiteral(red: 0.9233391881, green: 0.4260931611, blue: 0.01353600342, alpha: 1)))
                            .padding(13)
                            

                        Text(item.title)
                            .font(.system(size: 15))
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)

                    }
                })
                .frame(width: (UIScreen.main.bounds.width - 50) / 3, height: (UIScreen.main.bounds.width - 50) / 3)
                .background(Color.white)
                .cornerRadius(10)
            }
        })
    }
}




struct MenuItem: Identifiable {
    let id = UUID().uuidString
    var title: String
    var image: String
}

let menuItems = [
    MenuItem(title: "Cartões", image: "creditcard"),
    MenuItem(title: "Pagamentos", image: "barcode.viewfinder"),
    MenuItem(title: "Investimentos", image: "chart.line.uptrend.xyaxis")
]

let ItensMenu = [

    MenuItem(title: "Transferências", image: "arrow.2.squarepath"),
    MenuItem(title: "Indique e Ganhe", image: "gift"),
    MenuItem(title: "Seguros", image: "umbrella"),
    MenuItem(title: "Interpag", image: "qrcode.viewfinder"),
    MenuItem(title: "Depósito por boleto", image: "doc"),
    MenuItem(title: "Depósito por cheque", image: "menubar.dock.rectangle"),
    MenuItem(title: "Agendamentos", image: "calendar"),
    MenuItem(title: "Portabilidade de salário", image: "briefcase"),
    MenuItem(title: "Financiamento Imobiliário", image: "house"),
    MenuItem(title: "Débito Automático", image: "menubar.dock.rectangle.badge.record"),
    MenuItem(title: "Consórcio", image: "key"),
    MenuItem(title: "Câmbio", image: "eurosign.square"),
]

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

//
//  PageView.swift
//  BancoInter
//
//  Created by Leonardo Fernandes on 03/05/22.
//

import SwiftUI

struct PageView: View {
    @Binding var isVisible: Bool

    var title: String

    var body: some View {
        VStack(alignment: .leading) {

          VStack(alignment: .leading) {
            HStack {

              Image("Inter")
                  .resizable()
                  .aspectRatio(contentMode: .fill)
                .frame(width: 30, height: 30)
                .padding(.leading, 4)

            }

              Spacer()

            HStack {
              HStack {
                    Text("R$")
                        .font(.system(size: 33))
                        .fontWeight(.bold)
                        .padding(.leading, -20)


                    Text("0,00")
                        .font(.system(size: 33, weight: .bold, design: .rounded))
                        .padding(.leading, -0)
                }
                .redacted(reason: isVisible ? .placeholder : .init())

                Button(action: {
                    isVisible.toggle()
                }, label: {
                    Image(systemName: isVisible ? "eye.slash" : "eye")
                })
                //.padding(.leading, 4)
                .foregroundColor(.orange)
                .padding(.leading, -5)


            }

          }
          Spacer()

          Text("Ver extrato")
            .fontWeight(.black)
                .opacity(0.7)
                .foregroundColor(.orange)
                .padding(.leading, -20)

        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
}

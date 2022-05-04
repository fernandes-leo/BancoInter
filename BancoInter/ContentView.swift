//
//  ContentView.swift
//  BancoInter
//
//  Created by Leonardo Fernandes on 03/05/22.
//


import SwiftUI

struct ContentView: View {
    @State var isVisible = false
    @State var selectedIndex = 0
    @State var isExpanded = false

    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
          VStack {
                VStack(spacing: 30) {
                    HStack {
                        VStack(alignment: .leading) {
                            TabView(selection: $selectedIndex) {
                                PageView(isVisible: $isVisible, title: "Saldo em conta")
                                    .tag(0)
                                    .foregroundColor(.black)

                            }
                            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                            .frame(width: UIScreen.main.bounds.width / 2, height: 120)

                            }
                        Spacer()
                          }

                    LazyVGrid(columns: [
                                GridItem(.flexible(minimum: 100, maximum: 200)),
                                GridItem(.flexible(minimum: 100, maximum: 200)),
                                GridItem(.flexible(minimum: 100, maximum: 200))
                    ], spacing: 10, content: {
                        ForEach(menuItems) { item in
                            Button(action: {}, label: {
                                VStack {
                                    Image(systemName: item.image)
                                        .font(.system(size: 27))
                                        .foregroundColor(.orange)
                                        .padding(13)

                                    Text(item.title)
                                        .font(.system(size: 15))
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.gray)
                                        .multilineTextAlignment(.center)
                                }
                            })
                            .frame(width: (UIScreen.main.bounds.width - 50) / 3, height: (UIScreen.main.bounds.width - 50) / 3)
                            .background(Color.white)
                            .cornerRadius(20)
                        }
                    })
                }
                .padding()
                .padding(.top, 50)
                .padding(.bottom, -110)
                .foregroundColor(Color.orange)
                .background(Color.white)
                .padding(.bottom, 85)
                

                if isExpanded {
                    MenuView()
                        .padding(.horizontal)
                }

                Button(action: {
                    withAnimation {
                        isExpanded.toggle()
                    }
                }, label: {
                    Image(systemName: isExpanded ? "chevron.up" : "chevron.down")
                        .resizable()
                        .font(.system(size: 21, weight: .bold, design: .rounded))
                        .frame(width: 40, height: 8)
                        .foregroundColor(Color(#colorLiteral(red: 0.9981626868, green: 0.3348763287, blue: 0.05063842982, alpha: 1)))
                })
                .padding(.top)

                HStack {
                  Text("Ofertas para você")
                    .bold()
                    .padding(.leading, 20)

                    Spacer()

                  Text("X")
                    .font(.headline)
                    .padding(.trailing, 29)
                    .foregroundColor(Color.orange)

                    }

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        ForEach(0 ..< 3) { item in
                            VStack(alignment: .leading) {
                                Text("O cartão dos sonhos")
                                    .font(.system(size: 20))
                                    .fontWeight(.bold)

                                HStack {
                                    Image("cartao")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 130, height: 35)
                                      Spacer()
                                    VStack(alignment: .leading, spacing: 15) {
                                        Text("Peça seu cartão com anuidade zero e as melhores condições do mercado")
                                            .font(.system(size: 17))
                                            .foregroundColor(Color.primary.opacity(0.8))

                                        Button(action: {}, label: {
                                            Text("Peça agora o seu")
                                                .foregroundColor(.white)
                                                .padding(.horizontal)
                                                .padding(.vertical, 12)
                                                .background(Color.orange)
                                                .cornerRadius(12)
                                        })
                                    }
                                }
                            }
                            .padding()
                            .frame(width: UIScreen.main.bounds.width - 42)
                            .background(Color.white)
                            .cornerRadius(10)
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.top)

                Spacer()



            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(0 ..< 3) { item in
                        VStack(alignment: .leading) {
                            Text("Mais tranquilidade no seu dia a dia")
                                .font(.system(size: 20))
                                .fontWeight(.bold)

                            HStack {
                                Image("tranquilidade")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 130, height: 35)
                                  Spacer()

                              VStack(alignment: .leading, spacing: 15) {
                                    Text("Peça seu cartão com anuidade zero e as melhores condições do mercado")
                                        .font(.system(size: 17))
                                        .foregroundColor(Color.primary.opacity(0.8))

                                    Button(action: {}, label: {
                                        Text("Quero ser cliente one")
                                            .foregroundColor(.white)
                                            .padding(.horizontal)
                                            .padding(.vertical, 12)
                                            .background(Color.orange)
                                            .cornerRadius(12)
                                    })
                                }
                            }
                        }
                        .padding()
                        .frame(width: UIScreen.main.bounds.width - 42)
                        .background(Color.white)
                        .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
            }
            .padding(.top)





            }
        })
        .background(Color(#colorLiteral(red: 0.9602255225, green: 0.9645934701, blue: 0.9818953872, alpha: 1)))
        .ignoresSafeArea(.all, edges: .all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

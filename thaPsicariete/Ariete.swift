//
//  Ariete.swift
//  thaPsicariete
//
//  Created by Mario Pizzano on 03/10/22.
//

import SwiftUI

struct SPECCHIO: View {
    var body: some View {
            ScrollView(.vertical) {
                VStack {
                    NavigationLink(destination: giornatenoioseplayer(width: 350)){
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 350, height: 100)
                            .foregroundColor(.gray)
                            .overlay {
                                Text("GIORNATE NOIOSE")
                                    .font(.system(size: 35))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                                
                            }
                    }
                    .buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: okkappaplayer(width: 350)){
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 350, height: 100)
                            .foregroundColor(.gray)
                            .overlay {
                                Text("okk@pp@")
                                    .font(.system(size: 35))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                                
                            }
                    }
                    .buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: ilyplayer(width: 350)){
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 350, height: 100)
                            .foregroundColor(.gray)
                            .overlay {
                                Text("!ly (feat. Coez)")
                                    .font(.system(size: 35))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                                
                            }
                    }
                    .buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: loopplayer(width: 350)){
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 350, height: 100)
                            .foregroundColor(.gray)
                            .overlay {
                                Text("l%p (feat. Mara Sattei)")
                                    .font(.system(size: 35))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                                
                            }
                    }
                    .buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: bilicoplayer(width: 350)){
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 350, height: 100)
                            .foregroundColor(.gray)
                            .overlay {
                                Text("_\nbilico_")
                                    .font(.system(size: 35))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                                
                            }
                    }
                    .buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: rotondaplayer(width: 350)){
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 350, height: 100)
                            .foregroundColor(.gray)
                            .overlay {
                                Text("r()t()nda \n(feat. Tiziano Ferro)")
                                    .font(.system(size: 35))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                                
                            }
                    }
                    .buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: yeahplayer(width: 350)){
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 350, height: 100)
                            .foregroundColor(.gray)
                            .overlay {
                                Text("ye@h (feat. Shiva)")
                                    .font(.system(size: 35))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                                
                            }
                    }
                    .buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: cometivorreiplayer(width: 350)){
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 350, height: 100)
                            .foregroundColor(.gray)
                            .overlay {
                                Text("come t! vorre!")
                                    .font(.system(size: 35))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                                
                            }
                    }
                    .buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: rockrollaplayer(width: 350)){
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 350, height: 100)
                            .foregroundColor(.gray)
                            .overlay {
                                Text("rock & rolla (feat. Rkomi)")
                                    .font(.system(size: 35))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                                
                            }
                    }
                    .buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: molecoleplayer(width: 350)){
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 350, height: 100)
                            .foregroundColor(.gray)
                            .overlay {
                                Text("molecole (interlude)")
                                    .font(.system(size: 35))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                                
                            }
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                VStack {
                    NavigationLink(destination: sciallaplayer(width: 350)){
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 350, height: 100)
                            .foregroundColor(.gray)
                            .overlay {
                                Text("sci@ll@ (feat. Tananai)")
                                    .font(.system(size: 35))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                                
                            }
                    }
                    .buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: rivaplayer(width: 350)){
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 350, height: 100)
                            .foregroundColor(.gray)
                            .overlay {
                                Text("r!va (feat. Pinguini Tattici Nucleari)")
                                    .font(.system(size: 35))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                                
                            }
                    }
                    .buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: miamiofakeplayer(width: 350)){
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 350, height: 100)
                            .foregroundColor(.gray)
                            .overlay {
                                Text("mi @mi o è f@ke")
                                    .font(.system(size: 35))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                                
                            }
                    }
                    .buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: siriplayer(width: 350)){
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 350, height: 100)
                            .foregroundColor(.gray)
                            .overlay {
                                Text("s!r! (feat. Lazza & Sfera Ebbasta)")
                                    .font(.system(size: 35))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                                
                            }
                    }
                    .buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: babynelbedplayer(width: 350)){
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 350, height: 100)
                            .foregroundColor(.gray)
                            .overlay {
                                Text("b@by nel bed")
                                    .font(.system(size: 35))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                                
                            }
                    }
                    .buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: casinonellamiatestaplayer(width: 350)){
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 350, height: 100)
                            .foregroundColor(.gray)
                            .overlay {
                                Text("cas!no nella m!a testa \n(feat. Salmo)")
                                    .font(.system(size: 35))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                                
                            }
                    }
                    .buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: woahplayer(width: 350)){
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 350, height: 100)
                            .foregroundColor(.gray)
                            .overlay {
                                Text("w()ah")
                                    .font(.system(size: 35))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                                
                            }
                    }
                    .buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: ciaoplayer(width: 350)){
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 350, height: 100)
                            .foregroundColor(.gray)
                            .overlay {
                                Text("c!ao (feat. Rondodasosa")
                                    .font(.system(size: 35))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                                
                            }
                    }
                    .buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: blaseblingplayer(width:350)){
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 350, height: 100)
                            .foregroundColor(.gray)
                            .overlay {
                                Text("+ bla se c'è bling")
                                    .font(.system(size: 35))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                                
                            }
                    }
                    .buttonStyle(PlainButtonStyle())
                    NavigationLink(destination: moonplayer(width: 350)){
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 350, height: 100)
                            .foregroundColor(.gray)
                            .overlay {
                                Text("m%n")
                                    .font(.system(size: 35))
                                    .fixedSize(horizontal: false, vertical: true)
                                    .multilineTextAlignment(.center)
                                
                            }
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .navigationTitle("SPECCHIO")
        }
    }

struct ContentView1_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

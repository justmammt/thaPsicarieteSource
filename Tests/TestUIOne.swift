//
//  ContentView.swift
//  thaPsicariete
//
//  Created by Mario Pizzano on 28/09/22.
//

import SwiftUI
import AVKit
import MediaPlayer
struct SongPlayer {
    static var selectedSong = ""
}


struct player: View {
    @State var audioPlayer: AVAudioPlayer!
    @State var playing = false
    @State var width : CGFloat
    
    var body: some View {
        ZStack {
            Color.backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("carattere-speciale")
                    .cornerRadius(25)
                HStack {
                    
                    Text(SongPlayer.selectedSong).font(.system(size: 45)).fontWeight(.bold)
                        .foregroundColor(.buttonColor)
                }
                HStack {
                    Button(action: {
                        if self.audioPlayer.isPlaying{
                            
                            self.audioPlayer.pause()
                            self.playing = false
                            
                        } else {
                            self.audioPlayer.play()
                            self.playing = true
                        }
                    }) {
                        Image(systemName: self.playing ? "pause.circle.fill" : "play.circle.fill").resizable()
                            .frame( width: 50, height: 50)
                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.buttonColor)
                    }
                    
                    
                }
                ZStack(alignment: .leading){
                    Capsule().fill(Color.white.opacity(0.08)).frame(height: 8)
                    Capsule().fill(Color.buttonColor).frame(width: self.width, height: 8)
                }
                .padding(.top)
            }
        }
        .onAppear {
            let sound = Bundle.main.path(forResource: " mar+e", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            
            self.audioPlayer.prepareToPlay()
            Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
                if self.audioPlayer.isPlaying{
                    
                    let screen = UIScreen.main.bounds.width - 30
                    
                    let value = self.audioPlayer.currentTime / self.audioPlayer.duration
                    
                    self.width = screen * CGFloat(value)
                }
            }
        }
    }
}

struct CarattereSpecialeUITest: View {
    var body: some View {
        ScrollView(.vertical) {
                VStack {
                   // NavigationLink(destination: player(width: 350)) {
                        Button(action: {
                            SongPlayer.selectedSong = " mar+e"
                            print(SongPlayer.selectedSong)
                        }) {
                            NavigationLink(destination: player(width: 350)) {
                                
                                
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(width: 350, height: 100)
                                    .foregroundColor(.gray)
                                    .overlay {
                                        Text("mar+e")
                                            .font(.system(size: 35))
                                            .fixedSize(horizontal: false, vertical: true)
                                            .multilineTextAlignment(.center)
                                        
                                    }
                                
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                        
                        
                  //  }
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
            .navigationTitle("c@ra++ere s?ec!@le")
        }
    }
struct MusicListUITest: View {
    var body: some View {
            NavigationView {
                ScrollView(.vertical) {
                        VStack{
                            Image("carattere-speciale")
                                .cornerRadius(25)
                            NavigationLink(destination: CarattereSpecialeUITest()){
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(width: 350, height: 100)
                                    .foregroundColor(.gray)
                                    .overlay {
                                        Text("c@ra++ere\ns?ec!@le")
                                            .font(.system(size: 35))
                                            .fixedSize(horizontal: false, vertical: true)
                                            .multilineTextAlignment(.center)
                                        
                                    }
                            }
                            .buttonStyle(PlainButtonStyle())
                            // .contentShape(RoundedRectangle)
                            .padding(.bottom)
                            
                        }
                    VStack{
                        Image("specchio")
                            .cornerRadius(25)
                        NavigationLink(destination: SPECCHIO()){
                            RoundedRectangle(cornerRadius: 25)
                                .frame(width: 350, height: 100)
                                .foregroundColor(.gray)
                                .overlay {
                                    Text("SPECCHIO")
                                        .font(.system(size: 35))
                                        .fixedSize(horizontal: false, vertical: true)
                                        .multilineTextAlignment(.center)
                                    
                                }
                        }
                        .buttonStyle(PlainButtonStyle())
                        // .contentShape(RoundedRectangle)
                        
                    }
                    }
                .navigationTitle("Music List")
                }
            
            .padding(.top)
                
            }
            
        }
struct SearchUITest: View {
    var body: some View {
     //   NavigationView {
            VStack {
                Image(systemName: "pencil.line")
                    .font(.system(size: 70))
                    .foregroundColor(.yellow)
                    .padding()
                Text("Work In Progress...")
                    .font(.system(size: 40))
                    .foregroundColor(.yellow)
      //      }
        }
    }
}

struct ContentViewUITest: View {
    var body: some View {
        TabView{
            MusicListUITest()
                .tabItem{
                    Image(systemName: "music.note.list")
                    Text("Music List")
                }
            SearchUITest()
                .tabItem{
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            AppInfoUITest()
                .tabItem {
                    Image(systemName: "info.square.fill")
                    Text("App info")
                }
        }
        }
    }

struct AppInfoUITest: View {
    var body: some View {
        VStack {
            Image(systemName: "info.square.fill")
                .font(.system(size: 40))
                .foregroundColor(.blue)
            Text("App Information")
                .font(.system(size: 40))
                .foregroundColor(.blue)
            List {
                Link("Developer's GitHub",
                     destination: URL(string: "https://github.com/justmammt")!)
                Link("Developer's Instagram",
                     destination: URL(string: "https://instagram.com/its.just_ma")!)
                Link("Developer's Website",
                     destination: URL(string: "https://justmammtlol.ga")!)
                Link("App Source Code",
                     destination: URL(string: "https://github.com/justmammt/thaPsicarieteSource")!)
 
            }
            Text("Version 0.1.1")
        }
    }
}
struct ContentViewUITest_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewUITest()
    }
}


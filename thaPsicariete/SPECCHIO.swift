//
//  SPECCHIO.swift
//  thaPsicariete
//
//  Created by Mario Pizzano on 04/10/22.
//

import SwiftUI
import AVKit
import MediaPlayer

struct giornatenoioseplayer: View {
    @State var audioPlayer: AVAudioPlayer!
    @State var playing = false
    @State var width : CGFloat
    
    func setupRemoteCommandCenter() {
        UIApplication.shared.beginReceivingRemoteControlEvents()
        
        let commandCenter = MPRemoteCommandCenter.shared()
        
        
        commandCenter.playCommand.addTarget { event in
            return .success
        }
        
        
        commandCenter.pauseCommand.addTarget { event in
            return .success
        }
        
        
        commandCenter.nextTrackCommand.addTarget { event in
            return .success
        }
        
        
        commandCenter.previousTrackCommand.addTarget { event in
            return .success
        }
    }
    
    func updateLockScreen() {
        var nowPlayingInfo = [String : Any]()
        nowPlayingInfo[MPMediaItemPropertyArtist] = "ARIETE"
        nowPlayingInfo[MPMediaItemPropertyTitle] = "GIORNATE NOIOSE"
        nowPlayingInfo[MPMediaItemPropertyArtwork] = "specchio"
        MPNowPlayingInfoCenter.default().nowPlayingInfo = nowPlayingInfo
    }
    var body: some View {
        ZStack {
            Color.backgroundColor
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("specchio")
                    .cornerRadius(25)
                HStack {
                    
                    Text("GIORNATE NOIOSE").font(.system(size: 45)).fontWeight(.bold)
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

struct SPECCHIO_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

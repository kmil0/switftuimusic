//
//  HomeScreen.swift
//  music WatchKit Extension
//
//  Created by Camilo Rodriguez on 22/06/21.
//

import SwiftUI

struct HomeScreen: View {
    let columns = [GridItem(.adaptive(minimum: 45),spacing: 8)]
    var body: some View {
        ScrollView {
            VStack{
                ZStack {
                    TopArtistView()
                    NavigationLink(
                        destination: ArtistScreen(),
                        label: {
                        }).opacity(0.05)
                }
                
                LazyVGrid(columns: columns, spacing:8){
                    ForEach(musics, id:\.self){music in
                        ZStack {
                            MusicCardView(music: music)
                            NavigationLink(
                                destination: SongsScreen(),
                                label: {
                                   
                                }).opacity(0.05)
                            
                        }
                       
                        
                    }
                } .padding(.vertical)
            }
        }
    }
}

struct TopArtistView: View {
    var body: some View {
        ZStack{
            Image(uiImage:#imageLiteral(resourceName: "top_artist"))
                .resizable()
                .frame(maxWidth:.infinity,maxHeight: 33).cornerRadius(10.0)
                .opacity(0.5)
            
            HStack{Image("star")
                Text("Best Artist").font(.system(size: 10)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).padding(.horizontal, 4)
                Spacer()
                Image("play")
            }.padding(.horizontal)
            
        }
    }
}

struct MusicCardView: View {
    let music: Music
    var body: some View {
        ZStack {
            Image(music.poster).resizable().aspectRatio(contentMode: .fill).cornerRadius(10.0).opacity(0.75)
            
            Text(music.artistName)
                .font(.system(size:8)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
        }
    }
}



struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

//
//  ArtistScreen.swift
//  music WatchKit Extension
//
//  Created by Camilo Rodriguez on 22/06/21.
//

import SwiftUI

struct ArtistScreen: View {
    let columns = [GridItem(.adaptive(minimum: 45),spacing: 8)]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid (columns: columns, spacing:8){
                    ForEach(artists, id:\.self) { artist in
                        ArtistCardView(artist: artist)
                    }
                }
            }
        }
        .navigationTitle("Artist")
    }
}

struct ArtistCardView: View {
    let artist:Artist
    var body: some View {
        VStack {
            Image(artist.image)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .cornerRadius(5.0)
            Text(artist.name).font(.system(size: 7)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).padding(.top,2)
        }
    }
}



struct ArtistScreen_Previews: PreviewProvider {
    static var previews: some View {
        ArtistScreen()
    }
}

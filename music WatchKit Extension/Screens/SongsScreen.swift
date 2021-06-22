//
//  SongScreen.swift
//  music WatchKit Extension
//
//  Created by Camilo Rodriguez on 22/06/21.
//

import SwiftUI

struct SongsScreen: View {
    var body: some View {
        ScrollView {
            ZStack {
                Image(uiImage: #imageLiteral(resourceName: "artist_4"))
                    .resizable()
                    .aspectRatio(1.76,contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                
                LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)), Color(#colorLiteral(red: 0.0862745098, green: 0.0862745098, blue: 0.0862745098, alpha: 0.3005155187)), Color(#colorLiteral(red: 0.1490196078, green: 0.1490196078, blue: 0.1490196078, alpha: 1))]), startPoint: .top, endPoint: .bottom)
                
                VStack{
                    Spacer()
                    Text("Selena Gomez".uppercased())
                        .font(.system(size: 10))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("Popular".uppercased())
                        .font(.system(size: 7))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                .padding(.bottom)
            }
            .cornerRadius(10.0)
            
            ForEach(0 ..< songs.count) { item in
                SongCardVIew(song: songs[item], serialNum: item+1)
            }
            .padding(.top, 4)
        }
    }
}

struct SongCardVIew: View {
    let song : Song
    let serialNum: Int
    var body: some View {
        HStack{
            Text("\(serialNum)").fontWeight(.medium)
            Text(song.name).fontWeight(.medium)
            Text("\(song.duration) min").fontWeight(.medium)
        }
        .font(.system(size:8))
        .padding()
        .background(Color(#colorLiteral(red: 0.1960784314, green: 0.1960784314, blue: 0.1960784314, alpha: 1)))
        .cornerRadius(8.0)
    }
}



struct SongScreen_Previews: PreviewProvider {
    static var previews: some View {
        SongsScreen()
    }
}

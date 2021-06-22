//
//  Music.swift
//  music WatchKit Extension
//
//  Created by Camilo Rodriguez on 22/06/21.
//


struct Music: Hashable {
    let artistName: String
    let poster: String
}

let musics = [
    Music(artistName: "Nicky Jam", poster: "poster_1"),
    Music(artistName: "Billie Eilish", poster: "poster_2"),
    Music(artistName: "Karol G", poster: "poster_3"),
    Music(artistName: "Khalid", poster: "poster_4"),
    Music(artistName: "Katy Perry", poster: "poster_5"),
    Music(artistName: "Post Malone", poster: "poster_6"),
    Music(artistName: "Ariana Grande", poster: "poster_7"),
    Music(artistName: "J Balvin", poster: "poster_8"),
    Music(artistName: "Bad Bunny", poster: "poster_9")
]

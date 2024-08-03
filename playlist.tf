resource "spotify_playlist" "English" {
    name = "English"
    tracks = ["0tgVpDi06FyKpA1z0VMD4v"]
}

data "spotify_search_track" "arijit_singh" {
  artist = "Arijit Singh"
  limit = 10
}

resource "spotify_playlist" "arijit_singh" {
    name = "Arijit Singh"
    tracks = [for i in range(0, 10) : data.spotify_search_track.arijit_singh.tracks[i].id]
}
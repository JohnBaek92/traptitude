json.array! @favorites.each do |favorite_track|
  json.favorite_id favorite_track.id
  json.track_id favorite_track.id
  json.title favorite_track.title
  json.features favorite_track.features
  json.musician favorite_track.album.musician
  json.image_url asset_path(favorite_track.album.image.url)
end

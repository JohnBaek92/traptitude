import React from 'react';
import {Link} from 'react-router-dom';
import { values } from 'lodash';

class AlbumShow extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    window.scrollTo(0, 0);
  }

  componentWillMount() {
    const albumId = Number(this.props.match.params.id);
    this.props.displaySingleAlbum(albumId);
  }

  componentWillReceiveProps(nextProps) {
    if (nextProps.match.params.id !== this.props.match.params.id) {
      this.props.displaySingleAlbum(Number(nextProps.match.params.id));
    }
  }

  renderTracks() {
    const albumId = Number(this.props.match.params.id - 1);
    const tracks = values(this.props.albums[albumId].tracks);
    const formattedTracks = tracks.map((track, idx) => {
      if (track.features) {
        return (
          <Link
            to={"/albums/" + track.album_id + "/" + track.id}
            key={idx}
            className="tracks-content-container"
          >
            <div className="tracks-content">
              <div className="track-count">{idx + 1}</div>
              <div className="track-title">{track.title}</div>
              <div className="features">(Ft. {track.features})</div>
              <div className="the-word-lyrics">Lyrics</div>
            </div>
          </Link>
        );
      } else {
        return (
          <Link
            to={"/albums/" + track.album_id + "/" + track.id}
            key={idx}
            className="tracks-content-container"
          >
            <div className="track-count">{idx + 1}</div>
            <div className="tracks-content">
              <div className="track-title">{track.title}</div>
              <div className="the-word-lyrics">Lyrics</div>
            </div>
          </Link>
        );
      }
    });

    return formattedTracks;
  }

  render() {
    const albumId = Number(this.props.match.params.id - 1);
    if (this.props.albums[albumId]) {
      const album = this.props.albums[albumId];
      return (
        <section className="album-show-page">
          <section className="album-background">
            <img className="album-background-photo" src={album.image_url} />
            <div className="black-layer">
              <div className="album-total-info">
                <img className="album-profile-photo" src={album.image_url} />
                <div className="album-info-minus-photo">
                  <div className="album-word">album</div>
                  <div className="album-title">{album.title}</div>
                  <div className="album-musician">{album.musician}</div>
                  <div className="album-release-date">
                    Released {album.release_date}
                  </div>
                </div>
              </div>
            </div>
          </section>
          <section className="flex-tracklist-and-add-track-edit-track">
            <section className="album-tracklist">
              <div className="the-word-tracklist">{album.title} Tracklist</div>
              {this.renderTracks()}
            </section>
            <section className="add-track">
              <Link className="add-track" to={`/album/${albumId}/add-track`}>
                Add Track
              </Link>
            </section>
          </section>
        </section>
      );
    } else {
      return <h1>Loading</h1>;
    }
  }
}

export default AlbumShow;

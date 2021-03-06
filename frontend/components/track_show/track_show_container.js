import { connect } from 'react-redux';
import Show from './track_show';
import { displayTrack } from '../../actions/track_actions';
import { displaySingleAlbum } from '../../actions/album_actions';
import { closeAnnotation, openAnnotation } from '../../actions/annotation_actions';
import { values } from 'lodash';
import { openModal } from '../../actions/modal_actions';
import { createFavorite, removeFavorite } from '../../actions/favorite_actions';

const mapStateToProps = ({tracks, albums, annotations, session}, ownProps) => {
  let trackAnno = [];
  values(annotations).forEach(anno => {
    if(tracks.id === anno.track_id) {
      trackAnno.push(anno);
    }
  });
  return({
    track: tracks,
    album: albums[ownProps.match.params.id - 1],
    annotations: trackAnno,
    session
  });
};

const mapDispatchToProps = (dispatch) => {
  return ({
    displayTrack: (trackId) => dispatch(displayTrack(trackId)),
    displaySingleAlbum: (id) =>dispatch(displaySingleAlbum(id)),
    closeAnnotation: () => dispatch(closeAnnotation()),
    openAnnotation: (annoForm) => dispatch(openAnnotation(annoForm)),
    openModal: (component) => dispatch(openModal(component)),
    createFavorite: (favorite) => dispatch(createFavorite(favorite)),
    removeFavorite: (favorite) => dispatch(removeFavorite(favorite))
  });
};

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(Show);

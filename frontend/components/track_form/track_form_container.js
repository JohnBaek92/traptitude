import React from 'react';
import { connect } from 'react-redux';
import TrackForm from './track_form';
import { createTrack } from '../../actions/track_actions';

const mapStateToProps = (state) => {
  return {
    currentUser: state.session.currentUser,
    album: state.albums
  };
};

const mapDispatchToProps = dispatch => ({
  createTrack: (track) => dispatch(createTrack(track))
});

export default connect(
  mapStateToProps,
  mapDispatchToProps
)(TrackForm);

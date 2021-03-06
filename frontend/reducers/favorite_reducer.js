import merge from 'lodash/merge';
import { RECEIVE_FAVORITE, DELETE_FAVORITE, RECEIVE_FAVORITES } from '../actions/favorite_actions'

const _nullFavorite = {};

const FavoriteReducer = (state = _nullFavorite, action) => {
  Object.freeze(state);
  switch(action.type) {
    case RECEIVE_FAVORITES:
      return Object.assign({}, state, action.favorites)
    default:
      return state;
  }
};

export default FavoriteReducer

import merge from 'lodash/merge';
import {
  RECEIVE_CURRENT_USER,
  RECEIVE_ERRORS,
  CLEAR_ERRORS
} from '../actions/session_actions';
import { RECEIVE_FAVORITE, DELETE_FAVORITE, RECEIVE_FAVORITES } from '../actions/favorite_actions'


const nullUser = {
  currentUser: null,
  errors: []
};

const SessionReducer = (state = nullUser, action) => {
  Object.freeze(state);
  let errors;
  switch(action.type) {
    case RECEIVE_CURRENT_USER:
      const currentUser = action.currentUser;
      return merge({}, nullUser, {
        currentUser
      });
    case RECEIVE_ERRORS:
      errors = action.errors;
      return merge({}, nullUser, {
        errors
      });
    case CLEAR_ERRORS:
      errors = [];
      return Object.assign(({}, state, {
        errors
      }));
    case RECEIVE_FAVORITE:
      return Object.assign({}, state, state.currentUser.favorites.push(action.favorite))
    case DELETE_FAVORITE:
      let newState = Object.assign({}, state);
      let favorites = newState["currentUser"]["favorites"];
      let favoriteFrontEndID;
      for(let i = 0; i < favorites.length;i++) {
        if(action.favorite.favorite_id === favorites[i].favorite_id ||
          action.favorite.favorite_id === favorites[i].id) {
          favoriteFrontEndID = i
        }
      }
      delete newState["currentUser"]["favorites"].splice(favoriteFrontEndID, 1);
      return newState;
    default:
      return state;
  }
};

export default SessionReducer;

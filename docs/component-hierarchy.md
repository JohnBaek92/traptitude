## Component Hierarchy

**AuthFormContainer**
  - AuthForm

**HomeContainer**
  - AlbumIndex
   * AlbumIndexItem

**AlbumsIndexContainer**
  - AlbumIndex
   * AlbumIndexItem

**AlbumDetailContainer**
  - AlbumDetail
  - TrackIndex
   * TrackItem
  - TrackForm

**TrackContainer**
  - TrackDetail
  - Annotation
  - AnnotationForm
  - CommentIndex
   * CommentItem
  - CommentForm

**ForumContainer**
  - CommentIndex
   * CommentItem
  - CommentForm

**UserStatsContainer**
  - TrackIndex
   * TrackItem
  - CommentIndex
   * CommentItem
  - AnnotationIndex
   * AnnotationItem


## Routes
|Path   |   Component   |
|-------|---------------|
|"/" | "HomeContainer" |
|"/sign-up" | "AuthFormContainer" |
|"/sign-in" | "AuthFormContainer" |
|"/users/:userId" | "UserStatsContainer" |
|"/albums" | "AlbumsIndexContainer"
|"/albums/:albumId" | "AlbumDetailContainer" |
|"/albums/:albumId/:trackId" | "TrackContainer" |
|"/forums" | "ForumContainer" |

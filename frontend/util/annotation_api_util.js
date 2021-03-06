export const fetchAnnotation = (id) => {
  return $.ajax({
    method: 'GET',
    url: `api/annotations/${id}`,
  });
};

export const fetchAllAnnotation = () => {
  return $.ajax({
    method: 'GET',
    url: `api/annotations/`
  });
};

export const createAnnotation = (annotation) => {
  return $.ajax({
    method: 'POST',
    url: `api/annotations`,
    data: annotation,
  });
};

export const deleteAnnotation = (annotation) => {
  return $.ajax({
    method: 'DELETE',
    url: `api/annotations/${annotation.id}`
  });
};

export const updateAnnotation = (annotation) => {
  return $.ajax({
    method: 'PATCH',
    url: `api/annotations/${annotation.id}`,
    data: { annotation: annotation }
  });
};

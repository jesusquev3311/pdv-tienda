import Api from '../Api';

export default {
    Services (url = 'products') {
      return {
        getAll: () => Api().get(url),
        getOne: (id) => Api().get(`${url}/${id}`),
        createOne: (product) => Api().post(url, lead),
        updateOne: (id, product) => Api().put(`${url}/${id}`, lead),
        deleteOne: (id) => Api().delete(`${url}/${id}`),
        getTags: (id) => Api().get(`${url}/${id}/tags`),
      }
    }
  }

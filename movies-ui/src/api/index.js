import axios from 'axios'
const COLONY_DOMAIN_NAME = process.env.REACT_APP_COLONY_DOMAIN_NAME
console.log(`COLONY_DOMAIN_NAME:${COLONY_DOMAIN_NAME}`)

const api = axios.create({
    baseURL: `http://movies-app.${window.location.hostname}:7000/api`,
})

export const insertMovie = payload => api.post('/movie', payload)
export const getAllMovies = () => api.get(`/movies`)
export const updateMovieById = (id, payload) => api.put(`/movie/${id}`, payload)
export const deleteMovieById = id => api.delete(`/movie/${id}`)
export const getMovieById = id => api.get(`/movie/${id}`)

const apis = {
    insertMovie,
    getAllMovies,
    updateMovieById,
    deleteMovieById,
    getMovieById,
}

export default apis

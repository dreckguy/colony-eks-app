import axios from 'axios'
//const API_URL= window.location.href
const {API_URL} = process.env
console.log(`API URL: ${API_URL}`)

const api = axios.create({baseURL:`http://${API_URL}:7000/api`})

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

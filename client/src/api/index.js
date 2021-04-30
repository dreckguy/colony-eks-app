import axios from 'axios'
const COLONY_DOMAIN_NAME = process.env.REACT_APP_COLONY_DOMAIN_NAME
console.log(`COLONY_DOMAIN_NAME:${COLONY_DOMAIN_NAME}`)

const api = axios.create({
    BASE_URL: `http://movies-api.${COLONY_DOMAIN_NAME}:7000/api`,
})

export const insertMovie = payload => api.post(`${BASE_URL}/movie`, payload)
export const getAllMovies = () => api.get(`/movies`)
export const updateMovieById = (id, payload) => api.put(`${BASE_URL}/movie/${id}`, payload)
export const deleteMovieById = id => api.delete(`${BASE_URL}/movie/${id}`)
export const getMovieById = id => api.get(`${BASE_URL}/movie/${id}`)

const apis = {
    insertMovie,
    getAllMovies,
    updateMovieById,
    deleteMovieById,
    getMovieById,
}

export default apis

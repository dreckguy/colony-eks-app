# Colony EKS App
This is a 3 tier app supposed to be deployed with Colony (soon to be Torque) on EKS.
## Issues
1.  $colony.applications.movies-api.dns doesn't resolve into API_URL env var of movies-ui app.
2.  $colony.applications.mongodb.dns doesn't resolve into DB_URL env var of movies-api app

## How to check it?
kubectl exec into the relevant pods and try to read logs with torque.sh logs 
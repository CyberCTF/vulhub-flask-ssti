# Vulhub's flask/ssti (in app/) runs vulhub/flask:1.1.1 with ./src mounted on /app.
# Isoloom has no bind mounts, so this image copies the same folder to the same place.
# Nothing else differs.
FROM vulhub/flask:1.1.1
COPY app/src/ /app/

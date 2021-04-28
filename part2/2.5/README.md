# 2.5
Command to scale the program
```bash
docker-compose up --scale compute=4
```

I had to also add the next line to `compute/Dockerfile` to avoid a `Cross-Origin Request Blocked`-error
```Dockerfile
# scaling-exercise/compute/Dockerfile
ENV REQUEST_ORIGIN http://localhost:3000
```

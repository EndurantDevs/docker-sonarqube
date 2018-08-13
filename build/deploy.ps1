Write-Host QA Passed, Deploying..
docker login -u="$env:DOCKER_USER" -p="$env:DOCKER_PASS"

docker push dnikolayev/docker-sonarqube:$env:TAG

Write-Host Finishing, logging out from DockerHub
docker logout

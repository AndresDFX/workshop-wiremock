FROM wiremock/wiremock

WORKDIR $HOME/home/wiremock

COPY responseExercise1.json __files/responseExercise1.json
COPY mappings.json mappings/mappings.json

EXPOSE 8080
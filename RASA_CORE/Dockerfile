

FROM python:3.6

WORKDIR /app

run pip install rasa_core

EXPOSE 5005
ADD stories.md /app
ADD domain.yml /app
ADD endpoints.yml /app

RUN echo "all 3 files copied inside docker"


RUN python -m rasa_core.train -d domain.yml -s stories.md -o models/dialogue

CMD python -m rasa_core.run -d models/dialogue -u test/nlu --endpoints endpoints.yml --enable_api -c rest --cors '*'




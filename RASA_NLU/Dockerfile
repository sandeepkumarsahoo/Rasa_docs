FROM rasa/rasa_nlu:0.13.7-full

EXPOSE 5000

#download spacy

RUN pip3 install rasa_nlu[spacy]
RUN echo "spacy installed"
RUN python3 -m spacy download en
#RUN python3 -m spacy download en_core_web_md en

RUN echo "spacy en installed"
WORKDIR /app

ADD nlu_train.md /app
RUN echo "copied nlu.md"
ADD nlu_config.yml /app
RUN echo "copied nlu_config.md"
RUN python3 -m rasa_nlu.train  -c /app/nlu_config.yml  --data /app/nlu_train.md -o projects --fixed_model_name nlu --project test --verbose
RUN echo "trained nlu"







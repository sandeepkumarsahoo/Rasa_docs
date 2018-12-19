pip3 install rasa/rasa_core

echo "rasa core installed"

python3 -m rasa_core.train -d domain.yml -s stories.md -o models/dialogue

echo "rasa core trained success"

python3 -m rasa_core.run -d models/dialogue -u test/nlu --endpoints endpoints.yml --enable_api --verbose



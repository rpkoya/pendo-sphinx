FROM pardahlman/sphinx

RUN apt-get update -y && apt-get upgrade -y && apt-get install vim -y && pip install sphinxcontrib.fulltoc

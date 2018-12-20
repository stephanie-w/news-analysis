FROM jupyter/scipy-notebook

RUN pip install --user spacy nltk seaborn
RUN python -m spacy download en_core_web_sm 
RUN python -m spacy download en

COPY . /app/notebooks/
WORKDIR /app

# Expose Jupyter port & cmd
EXPOSE 8888
CMD jupyter lab --port=8888 --no-browser --notebook-dir=/app/notebooks/ --allow-root --NotebookApp.token=''

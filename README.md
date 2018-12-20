# News Analysis

News Analysis on a Kaggle dataset : https://www.kaggle.com/rmisra/news-category-dataset/version/2

Minimum Requirements: High memory machine type with 4 vCPUs, and 26 GB of memory.

Download News_Category_Dataset_v2.json.zip from https://www.kaggle.com/rmisra/news-category-dataset/version/2 at the root of the repo.  
How to run the notebook in a conda env:

    $ conda create --name news-analysis python=2.7 jupyter
    $ source activate news-analysis
    $ pip install spacy nltk pandas scikit-learn numpy matplotlib seaborn 
    $ python -m spacy download en_core_web_sm
    $ python -m spacy download en
    $ jupyter notebook

How to run the notebook on Docker:
    
    $ docker build . -t news-analysis
    $ docker run -it --rm -p 8888:8888 news-analysis

Visit http://localhost:8888 and open `NewsAnalysis.ipynb` (Choose the Python 2 kernel)

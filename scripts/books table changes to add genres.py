# -*- coding: utf-8 -*-
"""Untitled21.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1MJF2kUZHM_GQnytjlcZ4C1TJjmM2ezgW
"""

import pandas as pd
import random

genres = [
    "Fantasy", "Science Fiction", "Mystery", "Thriller",
    "Romance", "Western", "Dystopian", "Memoir",
    "Biography", "Self-help", "Historical Fiction",
    "Young Adult", "Children's", "Non-fiction", "Horror"
]

df = pd.read_csv('/content/books.csv', on_bad_lines='skip')

df = df.drop(columns=['isbn', 'text_reviews_count'])


df['Genre'] = [random.choice(genres) for _ in range(len(df))]

df['Books Count'] = [random.randint(10, 50) for _ in range(len(df))]

df.to_csv('books_with_genres.csv', index=False)

print("CSV file has been updated with random genres, book counts, and unnecessary columns removed.")
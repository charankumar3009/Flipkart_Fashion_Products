#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
import numpy as np

df = pd.read_json('flipkart_fashion_products_dataset.json')
print(df.info())
print(df.head())


# In[2]:


for col in ['actual_price', 'selling_price']:
    df[col] = df[col].replace(',', '', regex=True)
    df[col] = pd.to_numeric(df[col], errors='coerce')


df['discount'] = df['discount'].str.extract(r'(\d+)', expand=False)
df['discount'] = pd.to_numeric(df['discount'], errors='coerce')


df['average_rating'] = pd.to_numeric(df['average_rating'], errors='coerce')

df['crawled_at'] = pd.to_datetime(df['crawled_at'])


# In[3]:


print(df.isnull().sum())


# In[4]:


for col in ['brand', 'category','seller']:
    df[col] = df[col].replace(r'^\s*$', np.nan, regex=True)
    df[col] = df[col].fillna('Others')


# In[5]:


df = df.dropna(subset=['selling_price', 'actual_price'])

df['discount'] = df['discount'].fillna(0)

df['average_rating'] = df['average_rating'].fillna(df['average_rating'].mean())

print(df.isnull().sum())
print(df.head())


# In[6]:


df.to_csv('flipkart_fashion_products_cleaned.csv', index=False)


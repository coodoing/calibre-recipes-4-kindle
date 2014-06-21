calibre-recipes-4-kindle
========================

calibre recipes for kindle paperwhite
# About

[`calibre`](http://manual.calibre-ebook.com/news.html) is a free and open source e-book library management application. It provides **BasicNewsRecipe** for writing recipies and can scrapy news or htmls from internet and convert them to e-books. You can checkout [API Document ](http://manual.calibre-ebook.com/news_recipe.html#news-recipe)and [sourcecode](http://bazaar.launchpad.net/~kovid/calibre/trunk/view/head:/src/calibre/web/feeds/news.py) of **BasicNewsRecipe** for more details. While you still need to know the [BeautifulSoup](http://www.crummy.com/software/BeautifulSoup/bs3/documentation.html) to parse html/xml and handle the **Tag** and **NavigableString** object.
# Install
Avoiding to install `calibre` from source, check [linux install ](http://calibre-ebook.com/download_linux ) for more details.

**Debian/Ubuntu:**
```
  apt-get install calibre
```

**RedHat/Fedora/CentOS:**

```
  yum -y install calibre
```
# Structure

When you write your own calibre recipe, you need to override `parse_index` method, and the return structure of this method likes :

**Element, Type; Sub-Element, Sub-Type, Sub-Element, Sub-Type**
>* Book, List; Volumn, Tuple
>* Volumn, Tuple; VolumnTitle, String, Chapters, List
>* Chapters, List; Chapter, Map
>* Chapter, Map; ChapterTitle,String, ChapterUrl, String

# Usage

```
  ebook-convert Swift.recipe Swift.mobi
  ebook-viewer Swift.mobi
```
or
```
  sh autorun.py Swift.recipe
```

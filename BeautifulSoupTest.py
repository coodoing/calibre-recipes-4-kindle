#-*-coding=utf-8-*-

import os,sys,re
from BeautifulSoup import BeautifulSoup

doc = ['<html><head><title>Page title</title></head>',
       '<body><p id="firstpara" align="center">This is paragraph <b>one</b>.',
       '<p id="secondpara" align="blah">This is paragraph <b>two</b>.',
       '</html>']
doc1 = ['<div id="list">\
			<dl>\
			<dt>outlier</dt>\
			<dd><a href="1.html" title="ch1">ch1</a></dd>\
			<dd><a href="2.html" title="ch2">ch2</a></dd>\
			<dd><a href="3.html" title="ch3">ch3</a></dd>\
			<dd><a href="4.html" title="ch4">ch4</a></dd>\
			<dd><a href="5.html" title="ch5">ch5</a></dd>\
			<dd><a href="6.html" title="ch6">ch6</a></dd>\
			</dl></div>\
		']
soup = BeautifulSoup(''.join(doc1))
print(soup.prettify())
#div = soup.find('div', { 'id': 'list' })
div = soup.findAll(attrs={'id' : 'list'})
print(div) 

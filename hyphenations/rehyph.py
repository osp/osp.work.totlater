#!/usr/bin/env python
# -*- coding: utf-8 -*-

""" This Script redo hyphenation for the whole document """

import random
try:
    import scribus
except ImportError:
    print "This script only runs from within Scribus."
    sys.exit(1)

 

pRange = xrange(1, scribus.pageCount())
for p in pRange:
	scribus.gotoPage(p)
	items = scribus.getPageItems()
	for i in items:
		iname, itype, iorder = i
		if itype == 4:
			scribus.dehyphenateText(iname)
			scribus.hyphenateText(iname)


EasyBoard
EasyBoard - message board for ModX Evo

# Google Russian to English Translation

## Setting

Copy the folder assets at the root of your site.
New Module Easy Board with the code from the file module.easy_board.php
Create a snippet easy_board code file snippet.easy_board.php
If you want to change the name of the database table or the folder where the photos are loaded, you can do this by editing the file assets / module / easy_board / easy_board.config.php
Start Module Easy Board.
After that you should estimate the structure of the document (headings) in tree MODx and start placing calls snippet easy_board. This sniippet responsible for the output boards on the site, add new and edit old ads. For all this, the snippet there are many different options.

## Options snippet

http://www.xn--80ajr5b.com/2014/12/easy-board-doska-obyavlenijj-dlya-modx-evo/

## Version history

1.05 The basic version - the emergence of contexts. If they are not needed, there is no sense to be updated (for the update, you must replace the files on the server, the code snippet and add a column in the database - context varchar (32) NOT NULL)

fixed an error, if the site is not used CNC
added support for contexts. Now, on one module is installed, you can make different directories. For example, a message board, a directory of organizations, showcase products, etc. Partly & context is responsible for the context which is currently running a snippet. Its value is taken into account when listing ads, you add a new ad, counting the number of ads. Yes, probably now the term "advertisement" is not appropriate to apply this decision, because on the basis of it is possible to organize "without crutches," not just a message board. Used contexts specified in the assets / module / easy_board / easy_board.config.php
1.04 (to upgrade from a previous version is sufficient to replace the files on the server, and the new code snippet)

New parameter & noresult. Its value is output when there is no result. For example it can be used in displaying the search results.
finalized conclusion pagination. If the pin is placed on the same page, the pagination is not displayed.
New parameter & paginate. 1 - output pagination, 0 - do not show.
modified the logic output of the full text ads. Now you can display unpublished ads by specifying & published
Added action = & searchform to display ads on the search form.
Added option to specify & idsearchpage page id display ads on search results.
Added option to specify & tplsearchform chunk with structured search form.
1.03 (to upgrade from a previous version is sufficient to replace the files on the server, and the new code snippet)

Added check for required fields when applying and editing ads. Required fields are listed in the & required. Default "pagetitle, contact"
added the possibility of flexible filtering parameter & filter. For example: & filter = sc2.pagetitle the LIKE '% I' - displays ads cities that start with the letter "I". With this filter you can organize a search on the bulletin board.
New parameter & sort (for any sorting)
adding small patterns and manipulate
Added optional snippet toget allows peredovat in snippet O board any GET parameters (for example, for the organization of the search)
1.02 (to upgrade from a previous version is sufficient to replace the files on the server, and the new code snippet)

Changed work with a selection of cities (cities can now be only one level child documents)
Improved work with parameter snippet & parent. Now it is possible to list more than one ID documents
Added parameter & recursion. If it is set & recursion = 1, then the search will be carried out ads in all the subsidiaries mentioned in the headings of & parent
Added parameter action = & count. In place of the snippet call will indicate the number of ads. Taking into account other parameters to filter ads
Added the ability to call the snippet multiple times on the page
Improved language pack
1.01

Fixed a bug in the access policy for a new ad
Fixed a bug in the module (when editing the ad delete photos)
Added the ability to sub-headings
Entered the language pack for Multilanguage
Added stub instead of image ads without pictures

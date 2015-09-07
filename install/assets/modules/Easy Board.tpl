/**
 * Easy Board
 *
 * 
 *
 * @category	module
 * @internal	@modx_category uncategorized
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# ver 1.02 - Easy Board - module to control the message board
# author - леха.com, декабрь 2014 
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
$defaultuser = 1; // The user ID, which is host to be added through the module ads
$categoryID = 47; // ID modx document . All documents attached to this document will headings
$cityID = 3; //  ID modx document .All documents attached to this document will be cities
$col = 50; // Pagination module. Number of items per page.

include_once($modx->config['base_path'].'assets/modules/easy_board/easy_board.php');
/**
 * toget
 *
 * toget - snippet to return $_GET parameter
 *
 * @category	snippet
 * @internal	@modx_category Easy Board
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */

###############################################
#
# toget - snippet to return $_GET parameter
#
# example call:
# [!toget? &name=`search`!]
# will return $_GET[search]
#
###############################################
	
$name = ( isset($name) ) ? $name : "";
	
	if ( $name != "" AND isset($_GET[$name]) ) return $modx->db->escape($_GET[$name]);

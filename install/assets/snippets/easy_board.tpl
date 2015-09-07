/**
 * easy_board
 *
 * Easy Board ver 1.05 - Bulletin board
 *
 * @category	snippet
 * @internal	@modx_category Easy Board
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */

if(!defined('MODX_BASE_PATH')){die('What are you doing? Get out of here!');}
#::::::::::::::::::::::::::::::::::::::::
# Easy Board ver 1.05 - Bulletin board
# автор - леха.com, январь 2015 
#::::::::::::::::::::::::::::::::::::::::

// Default values
$action = ( isset($action) ) ? $action : "viewboard";
$context = ( isset($context) ) ? $context : "main";		// the context with which to work
$limit = ( isset($limit) ) ? $limit : 20; 				// Limit the number of ads on the page
$paginate = ( isset($paginate) ) ? $paginate : 1; 		// Pagination or not. "1" - remove.
$parent = ( isset($parent) ) ? $parent : ""; 			// id category
$recursion = ( isset($recursion) ) ? $recursion : 0;	// 1 - including all subheadings belonging $parent, 0 - only the specified column in the $parent
$parentIds = ( isset($parentIds) ) ? $parentIds : 0;	// id parent columns
$city = ( isset($city) ) ? $city : ""; 					// id cities
$cityIds = ( isset($cityIds) ) ? $cityIds : 0;			// id cities
$user = ( isset($user) ) ? $user : ""; 					// id user
$idviewurl = ( isset($idviewurl) ) ? $idviewurl : 1; 	// id page for full view
$idediturl = ( isset($idediturl) ) ? $idediturl : 1; 	// id page to edit ad
$idafterediturl = ( isset($idafterediturl) ) ? $idafterediturl : 1; 	// id will be redirected to the page where the user after editing the ad
$idsearchpage = ( isset($idsearchpage) ) ? $idsearchpage : 1; 	// id Page where to send the data from the search form
$txtedit = ( isset($txtedit) ) ? $txtedit : "[edit]";
$txtdelete = ( isset($txtdelete) ) ? $txtdelete : "[remove]";
$published = ( isset($published) ) ? $published : 1;	// publication status: 1 - published, 0 - not published, "" - null, all
$annotationlen = ( isset($annotationlen) ) ? $annotationlen : 150; // length annotations
$jquery = ( isset($jquery) ) ? $jquery : 1; 			// 1 -hook up Jquery, 0 - отключить
$css = ( isset($css) ) ? $css : $modx->config['site_url']."assets/snippets/easy_board/css/easy_board.css";
$tplview = ( isset($tplview) ) ? $tplview : "";
$tpledit = ( isset($tpledit) ) ? $tpledit : "";
$tplviewsingle = ( isset($tplviewsingle) ) ? $tplviewsingle : "";
$tplsearchform = ( isset($tplsearchform) ) ? $tplsearchform : "";
$nophoto = ( isset($nophoto) ) ? $nophoto : "assets/snippets/easy_board/images/no_photo.gif"; // image for ads without pictures
$phpthumboption = ( isset($phpthumboption) ) ? $phpthumboption : "w=150,h=120,far=R,zc=1,bg=FFFFFF"; // phpthumb options
$phpthumboptionSingle = ( isset($phpthumboptionSingle) ) ? $phpthumboptionSingle : "w=380,h=250,far=R,zc=1,bg=FFFFFF"; // phpthumb option for when viewing ads
$imagesize =  ( isset($imagesize) ) ? $imagesize : 1048576; //a limit on the size of the loaded image
$lang = ( isset($lang) ) ? $lang : "russian"; 			// Language Pack
$required = ( isset($required) ) ? $required : "pagetitle,contact"; 	// Required fields when adding a new ad
$filter = ( isset($filter) ) ? $filter : "";			// Additional filtering database (syntax MySQL WHERE) example: &filter=`sc2.pagetitle LIKE 'Я%'`
$sort = ( isset($sort) ) ? $sort : "eb.createdon DESC";	// Sort ads (syntax MySQL ORDER BY)

include($modx->config['base_path']."assets/modules/easy_board/easy_board.config.php");
include_once($modx->config['base_path']."assets/modules/easy_board/easy_board.inc.php");
$snippetPath = $modx->config['base_path'] . "assets/snippets/easy_board/";	
include ( $snippetPath . "lang/$lang.inc.php");

$noresult = ( isset($noresult) ) ? $noresult : $_lang['eb_noresult'];

include_once ( $snippetPath . "easy_board.inc.php");
include ( $snippetPath . "easy_board.php");

return $output;

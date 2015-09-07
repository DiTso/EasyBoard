/**
 * Easy Board
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

// Значения по умолчанию
$action = ( isset($action) ) ? $action : "viewboard";
$context = ( isset($context) ) ? $context : "main";		// с каким контекстом работать
$limit = ( isset($limit) ) ? $limit : 20; 				// лимит количества объявлений на странице
$paginate = ( isset($paginate) ) ? $paginate : 1; 		// Выводить пагинацию или нет. "1" - выводить.
$parent = ( isset($parent) ) ? $parent : ""; 			// id рубрики
$recursion = ( isset($recursion) ) ? $recursion : 0;	// 1 - включая все подрубрики принадлежащие $parent, 0 - только указанные рубрики в $parent
$parentIds = ( isset($parentIds) ) ? $parentIds : 0;	// id родителя рубрик
$city = ( isset($city) ) ? $city : ""; 					// id города
$cityIds = ( isset($cityIds) ) ? $cityIds : 0;			// id города
$user = ( isset($user) ) ? $user : ""; 					// id пользователя
$idviewurl = ( isset($idviewurl) ) ? $idviewurl : 1; 	// id страницы для полного просмотра
$idediturl = ( isset($idediturl) ) ? $idediturl : 1; 	// id страницы для редактирования объявления
$idafterediturl = ( isset($idafterediturl) ) ? $idafterediturl : 1; 	// id страницы куда будет перенаправлен пользователь после редактирования объявления
$idsearchpage = ( isset($idsearchpage) ) ? $idsearchpage : 1; 	// id страницы куда отправить данные из формы поиска
$txtedit = ( isset($txtedit) ) ? $txtedit : "[редактировать]";
$txtdelete = ( isset($txtdelete) ) ? $txtdelete : "[удалить]";
$published = ( isset($published) ) ? $published : 1;	// статус публикации: 1 - опубликовано, 0 - неопубликовано, "" - пустое значение, все
$annotationlen = ( isset($annotationlen) ) ? $annotationlen : 150; // длина аннотации
$jquery = ( isset($jquery) ) ? $jquery : 1; 			// 1 - подключить Jquery, 0 - отключить
$css = ( isset($css) ) ? $css : $modx->config['site_url']."assets/snippets/easy_board/css/easy_board.css";
$tplview = ( isset($tplview) ) ? $tplview : "";
$tpledit = ( isset($tpledit) ) ? $tpledit : "";
$tplviewsingle = ( isset($tplviewsingle) ) ? $tplviewsingle : "";
$tplsearchform = ( isset($tplsearchform) ) ? $tplsearchform : "";
$nophoto = ( isset($nophoto) ) ? $nophoto : "assets/snippets/easy_board/images/no_photo.gif"; // изображение для объявлений без фотографии
$phpthumboption = ( isset($phpthumboption) ) ? $phpthumboption : "w=150,h=120,far=R,zc=1,bg=FFFFFF"; // опция для phpthumb
$phpthumboptionSingle = ( isset($phpthumboptionSingle) ) ? $phpthumboptionSingle : "w=380,h=250,far=R,zc=1,bg=FFFFFF"; // опция для phpthumb при просмотре объявления
$imagesize =  ( isset($imagesize) ) ? $imagesize : 1048576; //ограничение на размер загружаемого изображения
$lang = ( isset($lang) ) ? $lang : "russian"; 			// Языковой пакет
$required = ( isset($required) ) ? $required : "pagetitle,contact"; 	// Обязательные поля при добавлении нового объявления
$filter = ( isset($filter) ) ? $filter : "";			// Дополнительная фильтрация по БД (синтаксис MySQL WHERE) Например: &filter=`sc2.pagetitle LIKE 'Я%'`
$sort = ( isset($sort) ) ? $sort : "eb.createdon DESC";	// Сортировка объявлений (синтаксис MySQL ORDER BY)

include($modx->config['base_path']."assets/modules/easy_board/easy_board.config.php");
include_once($modx->config['base_path']."assets/modules/easy_board/easy_board.inc.php");
$snippetPath = $modx->config['base_path'] . "assets/snippets/easy_board/";	
include ( $snippetPath . "lang/$lang.inc.php");

$noresult = ( isset($noresult) ) ? $noresult : $_lang['eb_noresult'];

include_once ( $snippetPath . "easy_board.inc.php");
include ( $snippetPath . "easy_board.php");

return $output;

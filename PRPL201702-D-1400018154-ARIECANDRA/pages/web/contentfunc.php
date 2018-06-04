<?php

//GET PAGE

function _pagecontent($id,$field)
{
	$q=mysql_query("Select * from page where page_id='".$id."'");
	$r=mysql_fetch_array($q);
	return $r[$field];
}

//GET NEWS CONTENT
function _newscontent($id,$field)
{
	$q=mysql_query("Select * from post_article where post_id='".$id."'");
	$r=mysql_fetch_array($q);
	return $r[$field];
}

//GET ROOM CONTENT
function _roomcontent($id,$field)
{
	$q=mysql_query("Select * from class where idclass='".$id."'");
	$r=mysql_fetch_array($q);
	return $r[$field];
}

?>
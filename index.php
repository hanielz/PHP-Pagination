<?php
require_once 'core/init.php';

$users = $controller->controller_get_data();
$pages = $controller->get_pagination_numbers();
?>


<!DOCTYPE html>
<html>
<head>
	<title>Pagination Pages</title>

	<style>
		.active{
			background-color: green;
			color: white;
		}
	</style>
</head>
<body>
	<ul>
		<?php
		foreach ($users as $user) :?>
			<li><?php echo $user->title.'<br>'. $user->description ?></li>
		<?php endforeach;?>
	</ul>
	<hr>
	<a href="?page=<?php echo $controller->prev_page()?>"> << </a>	
	<?php

		for ($i=1;$i<=$pages;$i++):?> 
		<a class="<?php echo $controller->is_active_page($i) ?>" href="?page=<?php echo $i?>"><?php echo $i?></a>
		<?php endfor;?>
	<a href="?page=<?php echo $controller->next_page()?>"> >> </a>		
</body>
</html>
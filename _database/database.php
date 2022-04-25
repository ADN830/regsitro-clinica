<?php
try {
    $db = new PDO('mysql:host=localhost; dbname=appinmater_interview; charset=utf8', 'root', '');
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);

		$db_mifact = new PDO('mysql:host=localhost; dbname=appinmater_interview; charset=utf8', 'root', '');
		$db_mifact->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		$db_mifact->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);

    $db_repo = new PDO('mysql:host=localhost; dbname=appinmater_reporte; charset=utf8', 'root', '');
    $db_repo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $db_repo->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
} catch (PDOException $e) {
    echo 'Fallo la conexion: ' . $e->getMessage();
}
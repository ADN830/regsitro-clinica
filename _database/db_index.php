<?php
date_default_timezone_set('America/Lima');
require("database.php");

function authentification($user, $pass)
{
  if (isset($user) and isset($pass) ) {
    global $db;
    $stmt = $db->prepare("SELECT * FROM usuario WHERE user=? AND pass=? AND estado=1");
    $stmt->execute(array($user, $pass));
    if ($stmt->rowCount() > 0) {
      return true;
    } else {
      return false;
    }
  } else {
    return false;
  }
}

function getUsuario($user)
{
  global $db;
  $stmt = $db->prepare("SELECT * FROM usuario WHERE user=?");
  $stmt->execute(array($user));
  $data = $stmt->fetch(PDO::FETCH_ASSOC);
  return $data;
}

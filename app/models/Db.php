<?php


class Db
{

  

  public function __construct()
  {}

  

  public function equals($compareTo)
  {
    return $this == $compareTo;
  }

  public function delete()
  {}

   public static  function connect()
  {
    return pg_connect("host=localhost port=5432 dbname=Livrable2");
  }

 
  
  
  public static function sql ($sql, $dbconn = null) 
  {
    $dbconn = $dbconn ?: self::connect();
      $result = pg_query($dbconn, $sql);
      return pg_fetch_all($result);
  }

}
?>

<?php
class User{
  private static $users = [];
  private static $current = null;

  public static function push($data, $setCurrent = false){
     //wee control that the user is not set in our cache system
     if(empty(self::$users[$data["id"]])){
       //push the user to the cahce system 
       self::$users[$data["id"]] = new UserData($data);
     }

     if($setCurrent)
       self::$current = self::$users[$data["id"]];
  }

}

class UserData{

}

<?php
use inc\messageparser\MessageParser;
use inc\access\Access;
use inc\user\User;
use inc\command\Command;
function title_command(MessageParser $msg){
	if($msg->channel()->isMember(User::current())){
		if($msg->message() == ""){
			Command::title($msg, $msg->channel()->name(), $msg->channel()->title(), false);
		}else{
			// wee control access to change the title
			if($msg->channel()->getMember(User::current())->group()->allowChangeTitle()){
				Command::title($msg, $msg->channel()->name(), $msg->channel->title($msg->message()), true);
			}else{
				error($msg, "You are now allow to change the title");
			}
		}
	}else{
		error($msg, "You are not member of the channel");
	}
}
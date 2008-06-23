﻿package twitter.api.data {  import twitter.api.data.TwitterUser;    public class TwitterStatus {    public var createdAt:Date;    public var id:Number;    public var text:String;    public var user:TwitterUser;        public function TwitterStatus(status:Object,      twitterUser:TwitterUser = null) {      this.createdAt = makeDate(status.created_at);      id = status.id;      text = status.text;      if (twitterUser){        user = twitterUser;      } else {        user = new TwitterUser(status.user);      }    }        private function makeDate(created_at:String):Date{      var dateString:String =        created_at.substr(0,10) + " " +        created_at.substr(created_at.length - 4,          created_at.length);      var timeString:String = created_at.substr(11,8);      return new Date(dateString + " " + timeString);    }  }}
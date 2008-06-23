package twitter.api.data {
  import mx.collections.ArrayCollection;
    [Bindable]  public class TwitterUser {    public var id:Number;    public var name:String;    public var screenName:String;    public var location:String;    public var description:String;    public var profileImageUrl:String;    public var url:String;    public var status:TwitterStatus;    public var tweets:ArrayCollection = new ArrayCollection();        public function TwitterUser(user:Object = null) {
      if (user == null) return;      id = user.id;      name = user.name;      screenName = user.screen_name;      location = user.location;      description = user.description;      profileImageUrl = user.profile_image_url;      url = user.url;      if (user.status.text) {        this.status = new TwitterStatus(user.status,this);      }    }        public function get screen_name():String {
      return screenName;
    }
    public function get profile_image_url():String {
      return profileImageUrl;
    }  }}
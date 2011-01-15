class Like < ActiveRecord::Base
  belongs_to :liker
  belongs_to :likable, :polymorphic => :true
  
  def self.find_likes_cast_by_user(user)
    find(:all,
      :conditions => ["user_id = ? ", user.id],
     :order => "created_at DESC"
     )
  end
end

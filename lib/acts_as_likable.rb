# ActsAsLikable
module Adventtec
  module Acts #:nodoc:
    module Likable #:nodoc:
    
      def self.included(base)
        base.extend ClassMethods
      end
    
      module ClassMethods
        def acts_as_likable(options={})
          cattr_accessor :likable_by
          self.likable_by = options[:by] || :user
          
          has_many :likes, :as => :likable, :dependent => :destroy
          include Adventtec::Acts::Likable::InstanceMethods
          extend Adventtec::Acts::Likable::SingletonMethods
        end
      end
             
      # This module contains class methods
      module SingletonMethods
        def find_likes_cast_by_user(user)
          likable = ActiveRecord::Base.send(:class_name_of_active_record_descendant, self).to_s
          Like.find(:all,
            :conditions => ["user_id = ? likable_type = ?", user.id, likable],
            :order => "created_at DESC"
          )
        end
      end
      
      # This module contains instance methods
      module InstanceMethods
        
        # Same as likable.likes.size
        def likes_count
          self.likes.count
        end
        
        def users_who_liked
          self.likes.find(:all, :include => [likable_by]).map { |l| l.send(likable_by) } 
        end
        
        def liked_by?(liker = nil)
          liker && self.likes.first(:conditions => { :liker_id => liker.id })
        end
      end
    end
    
    module Liker
      
      def self.included(base)
        base.extend ClassMethods
      end
      
      module ClassMethods
        def acts_as_liker
          has_many :likes, :foreign_key => "liker_id", :dependent => :destroy
          include Adventtec::Acts::Liker::InstanceMethods
        end
      end
      
      module InstanceMethods
        def likes!(likable_object)
          likes.create(:likable => likable_object)
        end
      end
    end
  end
end

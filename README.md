ActsAsLikable
=============

Allows user to like on the models.


Install
-------

Add to the Gemfile:
	gem 'acts_as_likable', :git => 'git://github.com/worklez/acts_as_likable.git'

Then run
	bundle install

Generate and run the acts_as_likable migration
	rails generate acts_as_likable_migration

acts_as_likable assumes that you have User model. Generator will add Like model and a migration script, so run
	rake db:migrate

Usage
-----

Make your ActiveRecord model act as likable.
	class Model < ActiveRecord::Base
	  acts_as_likable
	end

Like
	m.like_by user

Dislike
	m.dislike_by user

Score
	m.likes_sum

Credits
-------

Juixe.com - This project is heavily influenced by Acts As Votable
Esteban Pastorino

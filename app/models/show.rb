class Show < ActiveRecord::Base
    has_many :characters
    belongs_to :network
    has_many :actors, through: :characters
  def actors_list
    actor_list = []
    self.actors.map {|actor| actor_list << "#{actor.first_name} #{actor.last_name}"}
    actor_list
  end
end
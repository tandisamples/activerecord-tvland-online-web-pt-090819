class Actor < ActiveRecord::Base
  has_many :shows, through: :characters
  has_many :characters

  def full_name
    name = "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    roles = []
    self.characters.each(){|character|
      roles << "#{character.name} - #{character.show.name}"
    }
    roles
  end
end
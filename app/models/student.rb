class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activate
  	if self.active == false
  		self.active = true
  	else
  		self.active = false
  	end
  	self.save
  end

  def active?
  	self.active == true ? "active" : "inactive"
  end


end
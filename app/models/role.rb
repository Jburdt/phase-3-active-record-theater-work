class Role < ActiveRecord::Base
  has_many :auditions

  def auditions
    self.auditions.map:(&actor)
  end

  def actors
    self.auditions.map do |audition|
    audition.actor
  end

  def locations
    self.auditions.map(&:location)
  end

  def lead
   actor = self.auditions.find {|audition| audition.hired}
   if actor
    return actor
   else
    return "no actor has been hired for this role"
   end
  end

  def understudy
    actors = self.auditions.filter {|audition| audition.hired}
    if actors.length > 1
      return actor[1]
    else
      return "no actor has been hired for this role"
    end
  end

end
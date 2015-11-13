module Invitee
  def invited?
    true
  end
end

module PartyGoer
  attr_reader :drink_count
  def initialize
    @drink_count = 0
  end

  def drink
    if @drink_count >= 2
      false
    else
      @drink_count += 1
      true
    end
  end

  def sing
    "lala"
  end

  def cause_havoc
    raise PersonalizedHavocError, "You should define this yourself!"
  end

  def self.invited?
    true
  end
  
end

class PersonalizedHavocError < StandardError; end

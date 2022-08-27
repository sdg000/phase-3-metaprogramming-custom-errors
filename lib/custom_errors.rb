class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end


  def get_married(person)

    # if person is an Instance of Class Person; set person as partner to Self and vice versa.
    if person.is_a?(Person)
      self.partner = person
      person.partner = self
    else
      #if person is not an Instance of [Class Person], do the ff;
      begin
        raise PartnerError

      #resolving errors to allow code - execution
      #rescue creates a new Instance of "invoked Error" which inherits all methods / attributes of it's parents Error Class
      #explicitly calls methods of the newly Instantiated Class Object.
      rescue PartnerError => issue
        puts issue.message
      end

    end

  end

  #creating custom error class, inheriting from Standard Error
  class PartnerError < StandardError

    def message
      "person must be an instance of Class Person"
    end
  end
  

end
# paul = Person.new("paul")
beyonce = Person.new("Beyonce")
beyonce.get_married("jay-z")
puts beyonce.name





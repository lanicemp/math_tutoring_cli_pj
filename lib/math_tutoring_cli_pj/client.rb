class Client
    attr_accessor :name, :grade
    attr_reader :subject

    @@all = []
    
    def initialize(name)
    @name = name
    @grade = grade
   # @genres = genres 
    save 
    end 
    
    def self.all 
        @@all  
    end 
    
    def self.destroy_all
        @@all.clear
    end 
    
    def save 
      @@all << self   
    end 

    def self.create(client)
        self.new(client)   
    end 
end 
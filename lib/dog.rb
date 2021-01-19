class Dog 
    
    attr_reader :name 
    @@all = []

    def initialize(name)
        @name = name 
        self.save
    end

    def self.all 
        @@all 
    end 

    def save 
        @@all << self
    end

    def self.clear_all 
        self.all.clear 
    end

    def self.print_all 
        self.all.each { |x|
            puts x.name
        }
    end  

end

# dog1 = Dog.new('Snoopy')
# dog2 = Dog.new('Smokey')
# dog3 = Dog.new('Bushy')

# Dog.print_all


  


#   describe "#save" do
#     it "adds this dog instance to the @@all array when called" do
#       Dog.clear_all
#       pluto.save
#       expect(Dog.class_variable_get(:@@all)).to match([pluto])
#       maddy.save
#       expect(Dog.class_variable_get(:@@all)).to match([pluto, maddy])
#     end

#     it "gets called inside initialize when a new Dog is created" do
#         expect_any_instance_of(Dog).to receive(:save)
#         Dog.new('Luca')
#     end
#   end


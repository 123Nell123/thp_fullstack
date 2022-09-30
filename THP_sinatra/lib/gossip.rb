class Gossip
    attr_accessor :author , :content

    def initialize(author, content)
        @content = content
        @author = author
      end

    def save
        CSV.open("db/gossip.csv", "wb") do |csv|
            csv << [@content, @author]
            
        end
    end

    def self.all
        all_gossips = [] #on initialise un array vide

         # va chercher chacune des lignes du csv do
        CSV.read("db/gossip.csv").each do |csv_line|
        all_gossips << Gossip.new(csv_line[0], csv_line[1])
        end
        return all_gossips
        end
      
    def self.find(id)
        gossips = []   
        CSV.read("./db/gossip.csv").each_with_index do |csv_line, index|
            if (id == index+1)         
            gossips << Gossip.new(csv_line[0], csv_line[1])    
            break
                end
            end
            return gossips
        end
      

end
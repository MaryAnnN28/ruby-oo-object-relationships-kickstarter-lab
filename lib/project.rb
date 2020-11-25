class Project

     attr_reader :title

     def initialize(title)
          @title = title
     end

     def add_backer(backer)
          backer = ProjectBacker.new(self, backer)
     end

     def backers
          project_backer = ProjectBacker.all.select do |project_object| 
               project_object.project == self 
          end
          project_backer.collect do |project|
               project.backer
          end
          
     end
     

     

end
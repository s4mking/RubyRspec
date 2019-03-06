module Advanced
    # def self.typeOfVar
    #     @typeOfVar
    #   end 

    def self.class_as_string(typeOfVar)
        nomVar = to_s(typeOfVar)
        puts("##########",self.typeOfVar.class.name)
        if nomVar=="Array"
            return 'Array'
        elsif typeOfVar.is_a?(Hash)
            return 'Hash'
        elsif typeOfVar.is_a?(String)
            return 'String'
        end
    end

    
end
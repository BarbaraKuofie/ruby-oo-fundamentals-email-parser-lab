# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :email 

    def initialize (emails) 
        @emails = emails 
    end 

    def parse
        if @emails.include?(",")
            @emails = @emails.split(", ")
        else
            @emails = @emails.split(" ")
        end 
        @emails.map do |element|
            if element.include?(" ")
                element = element.split(" ")
            end 
            element
        end 
        .flatten.uniq 
    end 
end 

## I have an array with a space and a comma ["avi@test.com", "arel@test.com test@avi.com", "test@arel.com"]
## If the element has a space, i want to turn turn them into an array of different emails


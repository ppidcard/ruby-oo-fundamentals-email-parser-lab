# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser 
    def initialize(emails)
        @emails = emails
    end
    attr_accessor :emails
    
    def parse
        res = []
        res << emails.split(' ')
       ee =  res.flatten.map do |val|
            if val[val.length - 1] == ','
                val.delete(val[val.length - 1])
            else val
            end
        end
        ee.uniq 
    end
end

emails = EmailAddressParser.new("john@doe.com, person@somewhere.org, person@somewhere.org ppdicared@www aa aa")
p emails.parse
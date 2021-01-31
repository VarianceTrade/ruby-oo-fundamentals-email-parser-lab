# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    def parse
        # "a@email.com b@email.com"
        # "a@email.com b@email.com"
        # "a@email.com b@email.com a@email.com"
        stripped_emails = email_addresses.gsub(",", "")
        stripped_emails.split(" ").uniq

        # if email_addresses.include?(",") # "a@email.com b@email.com"
        #     email_addresses.split(", ") # => ["a", "b c"]
        # elsif email_addresses.include?(" ")
        #     return email_addresses.split(" ") # => ["a", "b"]
        # end
    end    
end

# ???separate into unique???
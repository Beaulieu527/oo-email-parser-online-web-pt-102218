# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse(emails)
    if @emails.match(/,/)
      split = @emails.split(/\s|,/)
      split.each do |emails|
        emails.split(" ")
      end
      split.flatten.unique
    end
    return @emails.split(" ").uniq
  end
end

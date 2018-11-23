# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    if @emails.match(/,/)
      split = @emails.split(", ")
      split.collect! do |emails|
        emails.split(" ")
      end
      split.flatten.uniq
    else
    return @emails.split(" ").uniq
  end
end
end

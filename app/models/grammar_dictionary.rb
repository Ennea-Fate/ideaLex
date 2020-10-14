class GrammarDictionary < ApplicationRecord
  after_save :func_serv_gramm
  belongs_to :book

  private
  def func_serv_gramm
    s = TCPSocket.new 'localhost', 3002
    grammar_id = self.id
    s.puts "grammar/" + grammar_id.to_s + "\r\n\r\n"
    s.close
  end
end

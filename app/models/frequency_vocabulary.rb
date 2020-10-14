class FrequencyVocabulary < ApplicationRecord
  after_save :doTheFv
  belongs_to :book

  private
  def doTheFv
    s = TCPSocket.new 'localhost', 3002
    fequency_id = self.id
    s.puts "vq/" + fequency_id.to_s + '\r\n\r\n'
    s.close
  end
end

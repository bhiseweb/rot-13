class Conversion < ApplicationRecord
  validates :body, presence: true, length: { maximum: 1000 }

  def rot
    string = self.body
    string.gsub(/./) do |char|
      case char
      when 'a'..'m', 'A'..'M' then (char.ord + 13).chr
      when 'n'..'z', 'N'..'Z' then (char.ord - 13).chr
      else char
      end
    end
  end
end

# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  source     :text
#  result     :text
#  token      :string(255)
#  user_id    :integer
#  slug       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  option     :string(255)
#

class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :token, use: :slugged
  include Tokenable

  belongs_to :user
  after_save :convert

  protected

  def convert
    source = "#{self.source}"
    case self.option
    when 'tw'
      self.result = Zh.to_tw source
    when 'sg'
      self.result = Zh.to_sg source
    when 'hk'
      self.result = Zh.to_hk source
    when 'cn'
      self.result = Zh.to_cn source
    end
  end
end

# == Schema Information
#
# Table name: devise_security_answers
#
#  id                    :integer          not null, primary key
#  questionable_id       :integer
#  questionable_type     :string(255)
#  question_id           :integer
#  encrypted_body        :string(255)
#  created_at            :datetime
#  updated_at            :datetime
#

class DeviseSecurityQuestions::Answer < ActiveRecord::Base

  self.table_name = "devise_security_answers"

  attr_reader :body

  scope :random, -> { order("RANDOM()") }

  belongs_to :questionable, polymorphic: true
  belongs_to :question, class_name: DeviseSecurityQuestions::Question

  validates :encrypted_body, presence: true

  def body=(new_answer)
    @body = new_answer
    self.encrypted_body = Devise.bcrypt(Devise, @body) if @body.present?
  end

  def valid_body?(body)
    return false if encrypted_body.blank?
    bcrypt   = ::BCrypt::Password.new(encrypted_body)
    body = ::BCrypt::Engine.hash_secret("#{body}#{Devise.pepper}", bcrypt.salt)
    Devise.secure_compare(body, encrypted_body)
  end

end

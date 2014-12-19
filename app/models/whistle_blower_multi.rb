class WhistleBlowerMulti < MailForm::Base
  attribute :question_1, :question_2, :question_3, :question_4, :check_box
  attribute :nickname,  :captcha  => true
  validates :check_box, :presence => true
  def headers
    {
      :subject => "New Message",
      # :to => "whistleblower@centralparknyc.org",
      :to => "cemmanuel1@gmail.com",
      :from => "sender@example.com"
    }
  end
end
class WhistleBlowerSingle < MailForm::Base
  attribute :message
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "New Message",
      :to => "whistleblower@centralparknyc.org",
      :from => "sender@example.com"
    }
  end
end
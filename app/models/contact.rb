class Contact < MailForm::Base

  attribute :name,      :validate => true
  attribute :surname,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message

  def headers
    {
      :subject => "My Contact Form",
      :to => "vladichnaprimer@gmail.com",
      :from => %("#{name}" "#{surname}" <#{email}>)
    }
  end
end
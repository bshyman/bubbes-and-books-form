class FormMailer < ApplicationMailer
  layout 'mailer'
  default from: 'amandashyman@gmail.com'
  def send_results(bubbe)
    @bubbe = bubbe
    mail(to: 'amandashyman@gmail.com', subject: 'A bubbe wants books!', template_path: 'form_mailer', template_name: 'send_results')
  end
end

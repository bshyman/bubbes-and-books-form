class FormMailer < ApplicationMailer
  layout 'mailer'
  default from: 'amandashyman@gmail.com'
  def send_results(bubbe)
    @bubbe = bubbe
    mail(to: 'bshyman@gmail.com', subject: 'subbers', template_path: 'form_mailer', template_name: 'send_results')
  end
end

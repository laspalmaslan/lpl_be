# coding: UTF-8

class EnrollmentsMailer < ActionMailer::Base
  default from: "info@ion6.com"
  def steps(enrollment)
    @enrollment = enrollment
    mail(:to => enrollment.email, :subject => "Pasos para completar inscripción - Las Palmas LAN 2012")
  end
  def waiting(enrollment)
    @enrollment = enrollment
    mail(:to => enrollment.email, :subject => "Estado de tu inscrición - Las Palmas LAN 2012")
  end
  def complete(enrollment)
    @enrollment = enrollment
    mail(:to => enrollment.email, :subject => "Inscripción completada - Las Palmas LAN 2012")
  end
end

class InvitationRequestMailer < ActionMailer::Base
  default :from => "#{Rails.application.name} " <<
    "<system@#{Rails.application.domain}>"

  def invitation_request(invitation_request)
    @invitation_request = invitation_request

    mail(
      :to => invitation_request.email,
      subject: "[#{Rails.application.name}] Confirm your invitation " <<
        "request to " << Rails.application.name
    )
  end
end

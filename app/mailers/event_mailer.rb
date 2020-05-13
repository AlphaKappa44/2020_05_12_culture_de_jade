# frozen_string_literal: true

class EventMailer < ApplicationMailer
  default from: 'alexandre.kelifa@hotmail.com'

  def attend_to_event_send(user)
    # on récupère l'instance event pour ensuite pouvoir la passer à la view en @event
    @event = event

    # on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url = 'https://culture-de-jade.herokuapp.com' # a changer pas l'url des events créés

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Votre évènement a bien été créé !')
  end
end

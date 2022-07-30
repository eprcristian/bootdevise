class UserMailer < ApplicationMailer
    def first_email
        mail(to: 'no_responder@emprendimiento.com', subject: 'Enviando correo molestoso')
    end

    def welcome_email(email, name, last_name)
        @name = name
        @last_name = last_name
        mail(to: email, subject: "Hola #{name} !")
    end
end

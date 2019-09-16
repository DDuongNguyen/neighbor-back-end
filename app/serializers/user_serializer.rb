class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :phone_number, :address, :is_inviter, :is_invitee,:number_of_events_hosting, :number_of_events_invites_received, :address_latitude, :address_longtitude, :user_image

  # has_many :sent_invites
  has_many :event_hosting
  has_many :event_going

  def is_inviter
    # debugger
    if object.sent_invites != []
      true
    else
      false
    end
  end

  def number_of_events_hosting
    if object.sent_invites != []
      # debugger
      object.events.count
    end
  end

  def is_invitee
    if object.received_invites != []
      true
    else
      false
    end
  end

  def number_of_events_invites_received
    if object.received_invites != []
      object.received_invites.count
    end
  end

  def event_hosting
    object.events
  end

  def event_going
    event_info= []
    object.received_invites.map do |invite|
    event_info <<  {id: invite.event.id, host_name:invite.inviter.name ,event_name: invite.event.name, description: invite.event.description, time:invite.event.time}
    end
    return event_info
  end

  def message
    # byebug
    messages = []
    object.sent_messages.map do |message|
    messages << {id:message.id, sender_id:message.sender_id, receiver_id: message.receiver_id, content: message.content}
    end
  end

  def user_image
    if object.image.attached?
      "http://localhost:3000/" + Rails.application.routes.url_helpers.rails_blob_path(object.image, only_path: true)
    else
      # debugger
      `https://www.uic.mx/posgrados/files/2018/05/default-user.png`
    end

  end

end

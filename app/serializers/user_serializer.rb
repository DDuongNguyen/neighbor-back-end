class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :phone_number, :address, :is_inviter, :is_invitee,:number_of_events_hosting, :number_of_events_invites_received, :address_latitude, :address_longtitude

  # has_many :sent_invites
  has_many :event_hosting
  has_many :event_going
  # has_many :sent_messages

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
      object.sent_invites.count
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
    # debugger
    event_info= []
    object.received_invites.map do |invite|
      # debugger
    event_info <<  {id: invite.event.id, host_name:invite.inviter.name ,event_name: invite.event.name, description: invite.event.description, time:invite.event.time}
    end
    return event_info
    #   event.invitees.find{|invitee| invitee.id== object.id}
    #
    # Event.all.select{|event| event.invitees.find{|invitee|}
      # im trying to find an event that has the object ID in it.
      # so im looking for all events with the object id then pick out that event
  end


end

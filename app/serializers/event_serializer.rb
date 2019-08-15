class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :time, :number_of_guests, :guest_list

  belongs_to :host_name
  belongs_to :event_addess
  belongs_to :event_latitude
  belongs_to :event_longtitude

  def guest_list
    # byebug
    guest_info = []
    object.invitees.each_with_index do |guest,index|
    guest_info << {id: index+1, name: guest.name, phone_number: guest.phone_number}
    end
    return guest_info
  end



  def number_of_guests
    object.invitees.count
  end

  def host_name
    # debugger
    object.user.name

  end

  def event_addess
    object.user.address
  end

  def event_longtitude
    object.user.address_longtitude
  end

  def event_latitude
    object.user.address_latitude
  end

end

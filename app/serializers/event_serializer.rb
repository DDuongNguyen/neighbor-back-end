class EventSerializer < ActiveModel::Serializer

  attributes :id, :name, :description, :time, :number_of_guests, :guest_list, :host_name, :host_id, :image

  belongs_to :host_name
  belongs_to :event_addess
  belongs_to :event_latitude
  belongs_to :event_longtitude

  def guest_list
    # byebug
    guest_info = []
    object.invitees.each_with_index do |guest|
    guest_info << {id: guest.id, name: guest.name, phone_number: guest.phone_number}
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

  def host_id
    # debugger
    object.user.id

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

  def image
    if object.image.attached?
      "http://localhost:3000/" + Rails.application.routes.url_helpers.rails_blob_path(object.image, only_path: true)
    else
      "https://pbs.twimg.com/media/DngZNe1XoAUCCI5.png"
    end

  end

end

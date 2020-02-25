class EventSerializer < ActiveModel::Serializer

  attributes :id, :name, :description, :time, :number_of_guests, :guest_list, :host_name, :host_id, :event_image

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

  def event_image
    if object.image.attached?
      "http://localhost:3000/" + Rails.application.routes.url_helpers.rails_blob_path(object.image, only_path: true)
    else
      events=[
        'https://www.mch-group.com/-/media/mch-group/Images/Content/News/Blog/2017/2017-04/mch-group-live-marketing-aktivierung.jpg',
      ]
      return events.sample
    end

  end

end

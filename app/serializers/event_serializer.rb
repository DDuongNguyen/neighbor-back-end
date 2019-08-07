class EventSerializer < ActiveModel::Serializer
  attributes :id,:name,:description,:time,:invitee_names


  def custom_invitee_name
    # byebug
    object.user.sent_invites_to.map(&:name)
  end
end

class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :phone_number, :address, :is_inviter, :is_invitee,:number_of_events_hosting, :number_of_events_invites_received
  has_many :sent_invites
  has_many :events
  # has_many :sent_messages



end

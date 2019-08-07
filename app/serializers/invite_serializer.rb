class InviteSerializer < ActiveModel::Serializer
  attributes :id

  has_many :sent_invite_to
end

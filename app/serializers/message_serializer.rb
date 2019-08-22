class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content,:sender_id,:sender_name,:receiver_id,:receiver_name,
  # belongs_to :receiver
  # belongs_to :sender

  def sender_name
    object.sender.name
  end

  def sender_id
    object.sender.id
  end

  def receiver_name
    object.receiver.name
  end

  def receiver_id
    object.receiver.id
  end

end

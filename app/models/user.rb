class User < ApplicationRecord

    has_many :sent_invites, foreign_key: :inviter_id, class_name: 'Invite'
    has_many :sent_invites_to, through: :sent_invites, source: :invitee

    has_many :received_invites, foreign_key: :invitee_id, class_name: 'Invite'
    has_many :received_invites_from, through: :received_invites, source: :inviter


    has_many :sent_messages, foreign_key: :sender_id, class_name: 'Message'
    has_many :sent_messages_to, through: :sent_messages, source: :receiver

    has_many :received_messages, foreign_key: :receiver_id, class_name: 'Message'
    has_many :received_messages_from, through: :received_messages, source: :sender

    has_many :events

    has_secure_password
    validates :username, uniqueness: true

    def is_inviter
      if self.sent_invites != []
        true
      else
        false
      end
    end

    def number_of_events_hosting
      if self.sent_invites != []
        self.sent_invites.count
      end
    end

    def is_invitee
      if self.received_invites != []
        true
      else
        false
      end
    end

    def number_of_events_invites_received
      if self.received_invites != []
        self.received_invites.count
      end
    end

end

class Event < ApplicationRecord
  has_many :invites
  belongs_to :user
  has_many :invitees, through: :invites, source: :invitee



# def accepted_invitees
#     self.invitees.where(status:true)
# end


end

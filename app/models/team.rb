class Team < ApplicationRecord
  include FriendlyId
  friendly_id :name

  validates :name, presence: true, uniqueness: true
  # validates :is_owner_team_member, on: :change_owner

  belongs_to :owner, class_name: 'User', foreign_key: :owner_id
  has_many :assigns, dependent: :destroy
  has_many :members, through: :assigns, source: :user
  has_many :articles, dependent: :destroy
  has_many :agendas, dependent: :destroy
  has_many :users, foreign_key: :keep_team_id
  mount_uploader :icon, ImageUploader

  def invite_member(user)
    assigns.create(user: user)
  end
  # def is_owner_team_member
  #   if Team.find(id).members.find_by(id: owner_id).nil?
  #     errors.add("", "this user is not a team member")
  #   end
  # end
end

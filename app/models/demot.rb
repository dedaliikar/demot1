class Demot < ActiveRecord::Base
attr_accessible :tittle, :image, :active, :category_ids
belongs_to :user
has_and_belongs_to_many :categories

has_many :votes
has_many :voters, :class_name => "User", :foreign_key => "user_id", :through => :votes

scope :published, where(active: true)
scope :unpublished, where(active: false)



  validates :tittle, presence: true
  validates :user_id, numericality: true
  validates :image, attachment_presence: true

  has_attached_file :image, 
  	:styles => { :medium => "400x400>", :thumb => "100x100>" },
  	:storage => :dropbox,
    :dropbox_credentials => "#{Rails.root}/config/dropbox.yml"

end
class Video < ActiveRecord::Base
  
  belongs_to :user
  
  default_scope :order => 'created_at DESC'
  
  attr_accessor :url_html
  
  before_validation_on_create :set_provider
  
  auto_html_for :url do
    youtube :width => 800, :height => 600
  end
  
end

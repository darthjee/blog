class Post < ActiveRecord::Base
  attr_accessible :body, :title

  has_many :comments, :dependent => :destroy

  validates_presence_of :title, :body
  validates_uniqueness_of :title

  def body_html
    BlueCloth.new(self.body).to_html.html_safe
  end
end

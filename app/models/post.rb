class Post < ActiveRecord::Base

  validates :title, presence: { message: '제목을 입력해주세요.' }
  validates :description, presence: { message: '내용을 입력해주세요.' }

end

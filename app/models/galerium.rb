class Galerium < ApplicationRecord
  validates :title, presence: true;
  validates :description, presence: true;
  validates :imagens, presence: true, length: { maximum: 20 };
  validates :data_comemorativa, presence: true;
  has_many_attached :imagens
end

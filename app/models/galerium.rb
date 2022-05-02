class Galerium < ApplicationRecord
  validates :title, :description, :imagens, :data_comemorativa, presence: true;
  has_many_attached :imagens
end

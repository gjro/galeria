class Galerium < ApplicationRecord
  # validates :title, :description, :data_comemorativa, :imagens, presence: true,
  has_many_attached :imagens
end

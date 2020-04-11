# frozen_string_literal: true

class AcLink < ApplicationRecord

    belongs_to :article
    belongs_to :category

end
  
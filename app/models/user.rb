class User < ApplicationRecord
  after_create do
    UserLogCreate.perform_later(self.id)
  end
end

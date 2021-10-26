class UserLogCreateJob < ApplicationJob
  queue_as :default

  def perform(user_id)
    UserLog.create(
      user_id: user_id,
    )
  end
end

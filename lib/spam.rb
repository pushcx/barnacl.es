def spam username
  mod = User.find(1)
  u = User.find_by!(username: username)
  u.ban_by_user_for_reason!(mod, 'Spam.')
  u.stories.each { |s|
    s.is_expired = true
    s.editor = mod
    s.moderation_reason = 'Spam.'
    s.save validate: false
  }
  u.comments.each { |c| c.delete_for_user(mod, 'Spam.') }
end

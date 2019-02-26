def cleanup un
  p = User.find(1)
  u = User.find_by!(username: un)
  u.stories.each do |s|
    s.editor = p
    s.is_expired = true
    s.moderation_reason = 'Spam'
    s.save(validate: false)
  end
  u.ban_by_user_for_reason! p, 'Spammer'
end

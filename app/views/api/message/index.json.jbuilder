json.array! @messages do |message|
  json.(message, :id, :title, :content, :target_type, :content_type, :already_read, :page_url)
  json.msg_type message.msg_type
  json.sub_title message.sub_title
  json.time message.created_at.strftime("%Y-%m-%d %H:%M")
  json.image_url "#{Settings.host}/#{message.avatar_url}"
end
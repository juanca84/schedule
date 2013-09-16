json.array!(@lessons) do |lesson|
  json.extract! lesson, :hour_start, :hour_finish
  json.url lesson_url(lesson, format: :json)
end

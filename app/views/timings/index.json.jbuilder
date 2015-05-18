json.array!(@timings) do |timing|
  json.extract! timing, :id, :current_time, :current_date, :date_time
  json.url timing_url(timing, format: :json)
end

json.array!(@slots) do |slot|
  json.extract! slot, :id, :slot_date, :slot_start_time, :slot_end_time, :slot_cost, :slot_status, :ground_id
  json.url slot_url(slot, format: :json)
end

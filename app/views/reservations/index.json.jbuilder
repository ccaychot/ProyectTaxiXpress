json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :lastnameandname, :dni, :phone1, :phone2, :mail, :reservationdate, :whenbooking, :point, :startingdistrict, :pointofarrival, :districtarrival, :status_id, :cost, :driver_id, :vehicle_id
  json.url reservation_url(reservation, format: :json)
end

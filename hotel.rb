hotel = { data: { rooms:
    [ { id: 1,
      room_number: "201",
      capacity: 50},

      { id: 2,
        room_number: "301",
        capacity: 200 },

      { id: 3,
          room_number: "1B",
          capacity: 100}
    ],
  events: [
      {
        id: 1,
        room_id: 2,
        start_time: 18,
        end_time: 20,
        attendees: 75 },

      {
        id: 2,
        room_id: 1,
        start_time: 10,
        end_time: 18,
        attendees: 25 },

      {
        id: 3,
        room_id: 2,
        start_time: 10,
        end_time: 18,
        attendees: 20 },

      {
        id: 4,
        room_id: 3,
        start_time: 18,
        end_time: 21,
        attendees: 56
      },
    ]
  }
}
puts capacity201 = hotel[:data][:rooms][0][:capacity]

hotel[:data][:events].each do |event|
      if event[:id] == hotel[:data][:rooms][0][:id]
        if event[:attendees] <= hotel[:data][:rooms][0][:capacity]
          puts "ok"
        else
          puts "really not OK for an event."
        end
      end
    end

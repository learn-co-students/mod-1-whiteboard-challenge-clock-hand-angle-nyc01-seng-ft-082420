def clock_angle(time)
  if time.length == 5
    minutes = (time[3] + time[4]).to_i 
    minuteDegrees = minutes * 6
    hourDegrees = ((time[0] + time[1]).to_i * 30) + minutes * 0.5
  end
  if time.length == 4
    minutes = (time[2] + time[3]).to_i 
    minuteDegrees = minutes * 6
    hourDegrees = (time[0].to_i * 30) + minutes * 0.5
  end

  if (hourDegrees - minuteDegrees).abs() == 360.0 || hourDegrees - minuteDegrees == 0
    return 0
  elsif hourDegrees > minuteDegrees
    hourDegrees - minuteDegrees
  elsif hourDegrees < minuteDegrees
    360 - (minuteDegrees - hourDegrees)
  end

end

class DataMunging
  def weather
    day= { }
    dat = File.open("/home/abturet/Development/git/kata/data_munging/data/weather.dat")
    dat.each { |line|
      ar = line.split(/\s+/)
      day[ar[0]] = (ar[1].to_i - ar[2].to_i).to_i
    }
    dat.sort { |k,v| k[1] <=> v[1]}
    return day.keys[0].to_s + "," + day.values[0].to_s
  end

  def football
  end
end

require 'faster_csv'
class DataMunging
  def parseData(file,headers, col_sep)
    return FasterCSV.read(file,:headers => headers, :col_sep => col_sep)
  end

  def weather
    ar =  parseData("data/weather.dat",false,' ').sort{ |k,v| (k[1].to_i - k[2].to_i) <=> (v[1].to_i - v[2].to_i)}
    return "#{ar.first[0]},#{ar.first[1].to_i - ar.first[2].to_i}"
  end

  def football
    return parseData("data/football.dat",true,' ').sort{ |k,v| (k[5].to_i - k[6].to_i).abs <=> (v[5].to_i - v[6].to_i).abs}.first[0]
  end
end

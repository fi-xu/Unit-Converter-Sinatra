def convert_sugar(grams)
  cups= grams.to_f/225
  return cups.to_s + " cups."
end

def convert_flour(grams)
  cups=grams.to_f/125
  return cups.to_s + " cups."
end

def convert_butter(grams)
  cups=grams.to_f/226
  return cups.to_s + " cups."
end

def convert_powdered_sugar(grams)
  cups=grams.to_f/160
  return cups.to_s + " cups."
end
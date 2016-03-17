require_relative '../lib/name_generator.rb'

# Define whatever methods you need first
#
# Now run your actual tests, making sure to do output as necessary
#
####################################################################

def assert(bool, message)
  if bool
    puts ":)"
  else
    puts message
  end
end

def refute(bool, message)
  if !bool
    puts ":)"
  else
    puts message
  end
end

# does string contain "Xx_"?
def test_prepend
  result = myspace_name_generator(name)
  refute result, "_xXNaMe doesn't include prependage"
end


# does string contain "_xX"?
def test_append
  result = myspace_name_generator(name)
  refute result, "NaMeXx_ doesn't include appendage"
end


# does string contain whitespace?
def test_whitespace
  result = myspace_name_generator(name)
  refute result, "_xXNaMe NaMeXx_ includes whitespace"
end



# does string contain punctuation?
def test_punctuation
  result = myspace_name_generator(name)
  refute result, "_xXNaMe?NaMeXx_ doesn't include punctuation"
end


# does string alternate between upper- and lowercase?
def test_alternate_case
  result = myspace_name_generator(name)
  refute result, "_xXNameNameXx_ includes punctuation"
end
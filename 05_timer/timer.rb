#write your code here
def time_string(seconds)
Time.at(seconds).utc.strftime("%H:%M:%S")
end

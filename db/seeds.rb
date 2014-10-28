subj_arr = ["ruby on rails", "ruby", "java", "javascript", "html", "css", "scss", "jquery", "c++", "php"]
subj_arr.each do |i|
  Subject.create(name: i)
end

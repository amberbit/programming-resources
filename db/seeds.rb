subj_arr = ["ruby on rails", "ruby", "java", "javascript", "html", "css", "scss", "jquery", "c++", "php"]
subj_arr.each do |i|
  subject = Subject.create(name: i)
  20.times do |j|
    subject.links.create(url: "http://test-page.com/#{i}/#{j}/", title: "Title  #{i} #{j}", description: "lorem ipsum #{j}")
  end
end

[
  {:title => "Blog1_seed", :description => "This is blog posted by Manish", :postedby => "Manish", :posted_time => Time.now, :publish => false},
  {:title => "Blog2_seed", :description => "This is blog posted by Manish", :postedby => "Manish", :posted_time => Time.now, :publish => true},
  {:title => "Blog3_seed", :description => "This is blog posted by Manish", :postedby => "Manish", :posted_time => Time.now, :publish => false},
  {:title => "Blog4_seed", :description => "This is blog posted by Manish", :postedby => "Manish", :posted_time => Time.now, :publish => true},
  ].each do |attrs|
    Post.find_or_create_by_title(attrs)
  end
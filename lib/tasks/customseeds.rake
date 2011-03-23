namespace :customseeds do
  desc "Reset the apps env with sample blogs"
  task :customposts => :environment do
    [
      {:title => "Blog1_customrake", :description => "This is blog posted by Manish", :postedby => "Manish", :posted_time => Time.now, :publish => true},
      {:title => "Blog2_customrake", :description => "This is blog posted by Manish", :postedby => "Manish", :posted_time => Time.now, :publish => false},
      {:title => "Blog3_customrake", :description => "This is blog posted by Manish", :postedby => "Manish", :posted_time => Time.now, :publish => true},
      {:title => "Blog4_customrake", :description => "This is blog posted by Manish", :postedby => "Manish", :posted_time => Time.now, :publish => false},
      ].each do |attrs|
        Post.find_or_create_by_title(attrs)
      end
    end

    desc "Show Top 5 posts"
    task :top_five => :environment do
      @posts = Post.limit(5)
      @posts.each do |p|
        puts p.title+"\t"+p.description+"\t"+p.postedby
      end
    end

    desc "To change published into unpublished"
    task :pub_to_unpub => :environment do
      @posts = Post.all
      @posts.each do |p|
        if p.publish==true
          Post.update(p.id, :publish => false)
        end
      end
    end

    desc "To change unpublished into published"
    task :unpub_to_pub => :environment do
      @posts = Post.all
      @posts.each do |p|
        if p.publish==false
          Post.update(p.id, :publish => true)
        end
      end
    end

  end
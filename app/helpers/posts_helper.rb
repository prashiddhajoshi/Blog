module PostsHelper

  def post_links(post)
    if post.publish==true
      content_tag :h5 do
        [
          "Title: ",post.title,"<br/>",
          "Description: ",post.description,"<br/>",
          "Posted By: ",post.postedby,"<br/>",
          "Posted Time",post.posted_time,"<br/>",
          link_to_icon ("show", post_path(post)),
          link_to_icon ("edit", edit_post_path(post)),
          link_to_icon ("destroy", post_path(post), :method => :delete, :confirm => "Do you really want to destroy?")
          ].join(' ').html_safe
        end
      end

    end

  end

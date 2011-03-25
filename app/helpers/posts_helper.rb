module PostsHelper

  def post_links(post)
    if post.publish==true
      content_tag :h3 do
        [
          link_to (" #{post.title}", post_path(post)),
          link_to_icon("show", post_path(post)),
          link_to_icon("edit", edit_post_path(post)),
          link_to_icon("destroy", post_path(post), :method => :delete, :confirm => "Do you really want to destroy?"),
          ].join(' ').html_safe
        end
      end

    end

  end

class BlogPage < SitePrism::Page

  set_url 'http://phptravels.net/blog'

  section :top_nav_section, TopNavSection, 'div.navbar-collapse'

  element :responsive_image, ".img-responsive"

end
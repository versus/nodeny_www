module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name
    when /the home page/
      root_path
     when /the arhitectura page/
      arhitectura_path
     when /the detail page/
      detail_path
    when /the price page/
      price_path
    when /the sale page/
      sale_path
    when /the demo page/
      demo_path
     when /the policy page/
      policy_path
     when /the changelog page/
      changelog_path
     when /the get49 page/
      get49_path
     when /get49/
      get49_path
     when /the aminet page/
      aminet_path

  
    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)

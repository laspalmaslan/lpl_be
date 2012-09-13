module HelperMethods
  def wait_until_we_see(element)
    wait_until { page.find(element).visible? }
  rescue Capybara::TimeoutError
    flunk 'Element #{element} not appearing'
  end
end

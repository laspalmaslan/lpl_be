module HelperMethods
  def wait_until_we_see(element)
    wait_until { page.find(element).visible? }
  rescue Capybara::TimeoutError
    flunk 'Element #{element} not appearing'
  end
  def log_in(admin)
    visit new_admin_session_path
    fill_in "Email", with: admin.email
    fill_in "Password", with: admin.password
    click_button "Sign in"
  end
end

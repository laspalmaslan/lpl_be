module LoginMacros
  def log_in(admin)
    visit posts_path
    fill_in 'admin_email', :with => admin.email
    fill_in 'admin_password', :with => admin.password
    click_button 'Acceder'
  end
end

module ApplicationHelper
  def active_in(controller, action=@current_action)
    (@current_controller == controller and @current_action == action) ? 'active' : ''
  end

  def menu_data
    [
      {name: "Home", url: root_path, class: active_in('general', 'dashboard')},
      {name: "Noticias", url: blog_path, class: active_in('blog')},
      {name: "Calendario", url: calendar_path, class: active_in('calendar') },
      {name: "Torneos", url: competitions_path, class: active_in('competitions')}
    ]
  end
end

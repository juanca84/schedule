module ApplicationHelper
  def get_page_id
    if current_user
      base = controller.class.to_s.gsub("Controller", '').underscore.gsub("/", '_')
    end
    return @page_id || "#{base}_#{controller.action_name}"
  end
end

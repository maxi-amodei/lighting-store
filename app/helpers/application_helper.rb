module ApplicationHelper
  def inline_svg_tag(icon, options = {})
    svg_path = Rails.root.join("app/assets/images/icons", "#{icon}.svg")
    svg = File.read(svg_path)
    svg.insert(4, " class='#{options[:class]}'") if options[:class].present?
    svg.html_safe
  end
end

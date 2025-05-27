module ApplicationHelper
  def flash_class(name)
    base_class = "alert alert-dismissible fade show"
    type_class = case name.to_s
    when "notice" then "alert-success"
    when "alert", "error" then "alert-danger"
    else "alert-#{name}"
    end

    [ base_class, type_class ].join(" ")
  end

  def flash_icon_class(name)
    case name.to_s
    when "notice" then "bi bi-check-circle-fill text-success"
    when "alert", "error" then "bi bi-exclamation-triangle-fill text-danger"
    end
  end
end

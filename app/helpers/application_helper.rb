module ApplicationHelper

  def safe_truncate_content(content, length)
    pure_text = strip_tags(content).gsub(/\n/, '').gsub(/\r/, '').gsub(/\t/, '').gsub(/&nbsp;/, '')
    sanitize truncate(pure_text, :length => length, :omission => '…')
  end

  def bootstrap_class_for(flash_type)
    case flash_type
      when "success"
        "alert-success"   # Green
      when "error"
        "alert-danger"    # Red
      when "alert"
        "alert-warning"   # Yellow
      when "notice"
        "alert-info"      # Blue
      else
        flash_type.to_s
    end
  end
end

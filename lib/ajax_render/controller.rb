module AjaxRender
  module Controller
    include ActionView::Helpers::JavaScriptHelper

    def ajax_render(partial_name, options = {})
      target =
        if options[:replace].present?
          "'#{options[:replace]}'"
        else
          "'body'"
        end

      partial = render_to_string(partial: partial_name, locals: options[:locals])
      render js: <<-EOS.gsub(/^ */, '')
        $(#{target}).html('#{escape_javascript partial}');
      EOS
    end
  end
end

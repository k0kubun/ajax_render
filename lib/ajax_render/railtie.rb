module AjaxRender
  class Railtie < Rails::Railtie
    initializer 'ajax_render' do |app|
      ::ActionController::Base.send(:include, ::AjaxRender::Controller)
    end
  end
end

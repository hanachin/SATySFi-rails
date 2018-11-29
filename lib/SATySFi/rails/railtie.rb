require "rails"

module SATySFi
  module Rails
    class Railtie < ::Rails::Railtie
      initializer :SATySFi_rails do
        ActiveSupport.on_load :action_view do
          ActionView::Template.register_template_handler :saty, SATySFi::Rails
        end
      end
    end
  end
end

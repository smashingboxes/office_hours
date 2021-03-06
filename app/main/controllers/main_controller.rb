# By default Volt generates this controller for your Main component
module Main
  class MainController < Volt::ModelController
    def index
      reset_appointment
    end

    private

    def send_appointment
      store._appointments << page._form
      reset_appointment
    end

    def reset_appointment
      page._form = Appointment.new
    end

    # The main template contains a #template binding that shows another
    # template.  This is the path to that template.  It may change based
    # on the params._component, params._controller, and params._action values.
    def main_path
      "#{params._component || 'main'}/#{params._controller || 'main'}/#{params._action || 'index'}"
    end

    # Determine if the current nav component is the active one by looking
    # at the first part of the url against the href attribute.
    def active_tab?
      url.path.split('/')[1] == attrs.href.split('/')[1]
    end
  end
end

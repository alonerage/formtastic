require 'inputs/basic'

module Formtastic
  module Inputs
    
    # Outputs a simple `<label>` with a HTML5 `<input type="phone">` wrapped in the standard
    # `<li>` wrapper. This is the default input choice for attributes with a name matching 
    # `/(phone|fax)/`, but can be applied to any text-like input with `:as => :phone`.
    #
    # @example Full form context and output
    # 
    #   <%= semantic_form_for(@user) do |f| %>
    #     <%= f.inputs do %>
    #       <%= f.input :mobile, :as => :phone %>
    #     <% end %>
    #   <% end %>
    #
    #   <form...>
    #     <fieldset>
    #       <ol>
    #         <li class="phone">
    #           <label for="user_mobile">Mobile</label>
    #           <input type="phone" id="user_mobile" name="user[mobile]">
    #         </li>
    #       </ol>
    #     </fieldset>
    #   </form>
    #
    # @see Formtastic::Helpers::InputsHelper#input InputsHelper#input for full documetation of all possible options.
    module PhoneInput
      include Formtastic::Inputs::Base
      include Formtastic::Inputs::Basic

      # Outputs a label and a standard Rails phone field inside the wrapper.
      def phone_input(method, options)
        basic_input_helper(:phone_field, :phone, method, options)
      end
    end
  end
end
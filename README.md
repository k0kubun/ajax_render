# AjaxRender

Simplify your ajax implementation

## Before

If you implement ajax with no plugin, you may write code as follows

```ruby
# app/controllers/tests_controller.rb
class TestsController < ApplicationController
  def ajax_action
    @value = params[:value]
    respond_to do |format|
      format.js
    end
  end
end
```

```erb
<%# app/views/tests/ajax_action.js.erb %>
$('.some_element').html(<%= render '/tests/partial', locals: { value: @value } %>);
```

## After using AjaxRender

You can avoid creating such js in your views directory by AjaxRender

```ruby
# Gemfile
gem 'ajax_render'
```

```ruby
# app/controllers/tests_controller.rb
class TestsController < ApplicationController
  def ajax_action
    ajax_render '/tests/partial', replace: '.some_element', locals: { value: params[:value] }
  end
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

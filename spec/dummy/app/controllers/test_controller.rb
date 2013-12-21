class TestController < ApplicationController
  def index
  end

  def ajax
    ajax_render '/test/partial', locals: { value: 'hoge' }, replace: '.partial'
  end
end

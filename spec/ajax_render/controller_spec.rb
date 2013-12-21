require 'spec_helper'

describe AjaxRender::Controller do
  describe '#ajax_render' do
    let(:partial_name)    { 'partial' }
    let(:partial_content) { 'content' }
    let(:controller_class) do
      Class.new(ActionController::Base) do
        include AjaxRender::Controller
      end
    end

    subject { controller_class.new }

    context 'given only one arg' do
      before do
        subject.stub(:render_to_string).with(partial: partial_name, locals: nil).
          and_return(partial_content)
      end

      it 'renders js which replaces body with given partial' do
        subject.should_receive(:render).with(
          js: <<-EOS.gsub(/^ */, '')
              $('body').html('content');
          EOS
        )
        subject.ajax_render(partial_name)
      end
    end

    context 'given locals option' do
      let(:locals) { double('locals') }

      before do
        subject.stub(:render_to_string).with(partial: partial_name, locals: locals).
          and_return(partial_content)
      end

      it 'renders js which replacpartiales body with given partial and locals' do
        subject.should_receive(:render).with(
          js: <<-EOS.gsub(/^ */, '')
            $('body').html('content');
          EOS
        )
        subject.ajax_render(partial_name, locals: locals)
      end
    end

    context 'given replace option' do
      let(:replace_target) { '.target' }
      before do
        subject.stub(:render_to_string).with(partial: partial_name, locals: nil).
          and_return(partial_content)
      end

      it 'renders js which replaces given target with given partial' do
        subject.should_receive(:render).with(
          js: <<-EOS.gsub(/^ */, '')
            $('#{replace_target}').html('content');
          EOS
        )
        subject.ajax_render(partial_name, replace: replace_target)
      end
    end
  end
end

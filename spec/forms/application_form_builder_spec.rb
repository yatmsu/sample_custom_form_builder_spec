require 'rails_helper'

RSpec.describe ApplicationFormBuilder do

  describe '#select_segments' do
    let(:user) { User.create(name: 'name', gender: 'male') }
    let(:builder){ ApplicationFormBuilder.new :user, user, ActionView::Base.new, {} }

    it {
      expect(builder.select_genders).to eq '<select name="user[gender]" id="user_gender"><option selected="selected" value="male">male</option>
<option value="fmale">fmale</option></select>'
    }
  end

end

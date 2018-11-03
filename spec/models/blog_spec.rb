require 'rails_helper'
RSpec.describe Blog, type: :model do
  describe "validations" do
    let(:blog) { FactoryGirl.build(:blog) }
    # factories.rb를 참조해 user를 만들어준다

    # email과 name가 존재하는지에 대한 valide 를 체크.
    it { is_expected.to validate_presence_of(:author) }
    it { is_expected.to validate_presence_of(:feed_url) }

  end
end

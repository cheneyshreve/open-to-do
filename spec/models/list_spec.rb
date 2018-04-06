require 'rails_helper'

RSpec.describe List, type: :model do

  it { is_expected.to have_many(:items) }


end

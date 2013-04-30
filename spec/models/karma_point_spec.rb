require 'spec_helper'

describe KarmaPoint do
  it { should belong_to(:user) }

  describe '#valid?' do
    it { should validate_presence_of(:user) }

    it { should validate_presence_of(:label) }

    it { should validate_numericality_of(:value).only_integer }
    it { should allow_value(0).for(:value) }
    it { should allow_value(1).for(:value) }
    it { should_not allow_value(-1).for(:value) }
  end

end

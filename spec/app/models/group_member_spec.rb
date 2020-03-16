require 'spec_helper'

describe GroupMember, type: :model do
  it { is_expected.to have_many_to_one :group }
  it { is_expected.to have_many_to_one :member }
end

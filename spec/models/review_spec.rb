require 'rails_helper'

describe Review do
  it { should validate_presence_of :user }
  it { should belong_to :product }
end

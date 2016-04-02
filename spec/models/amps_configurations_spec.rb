require 'rails_helper'

describe AmpsConfiguration do
  it { should belong_to(:configuration) }
  it { should have_valid(:AMPS_config).when("AMPS Configuration text") }
  it { should_not have_valid(:AMPS_config).when("", nil) }
end

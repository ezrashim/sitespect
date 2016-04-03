require 'rails_helper'

describe OriginExperiment do
  it { should belong_to(:basic_configuration) }

  it { should have_valid(:campaign_delimiter).when("<%= %>") }
  it { should_not have_valid(:campaign_delimiter).when("", nil) }

  it { should have_valid(:factor_delimiter).when("!@#$%^&*{}") }
  it { should_not have_valid(:factor_delimiter).when("", nil) }
end

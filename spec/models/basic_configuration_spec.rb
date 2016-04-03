require 'rails_helper'

describe BasicConfiguration do
  it { should have_valid(:site_name).when("My Site") }
  it { should_not have_valid(:site_name).when("", nil) }

  it { should have_valid(:status).when("Online") }
  it { should_not have_valid(:status).when("", nil) }

  it { should have_valid(:site_url).when("https://google.com") }
  it { should have_valid(:site_url).when("https://www.google.com") }
  it { should_not have_valid(:site_url).when("google") }
  it { should_not have_valid(:site_url).when("", nil) }

  it { should have_valid(:variation).when(52) }
  it { should_not have_valid(:variation).when(101) }
  it { should_not have_valid(:variation).when(0) }
  it { should_not have_valid(:variation).when("me") }
  it { should_not have_valid(:variation).when("", nil) }

  it { should have_valid(:default_behavior).when("track from initial assignment") }
  it { should_not have_valid(:default_behavior).when("", nil) }

  it { should have_valid(:enable_detect_variation).when(false) }
  it { should have_valid(:enable_detect_variation).when(true) }
  it { should_not have_valid(:enable_detect_variation).when("", nil) }

  it { should have_valid(:enable_AMPS).when(false) }
  it { should have_valid(:enable_AMPS).when(true) }
  it { should_not have_valid(:enable_AMPS).when("", nil) }

  it { should have_valid(:enable_origin_experiements).when(false) }
  it { should have_valid(:enable_origin_experiements).when(true) }
  it { should_not have_valid(:enable_origin_experiements).when("", nil) }
end

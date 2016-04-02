class AmpsConfiguration < ActiveRecord::Base
  belongs_to :configuration
  validates :AMPS_config, presence: true
end

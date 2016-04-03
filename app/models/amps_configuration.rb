class AmpsConfiguration < ActiveRecord::Base
  belongs_to :basic_configuration
  validates :AMPS_config, presence: true
end

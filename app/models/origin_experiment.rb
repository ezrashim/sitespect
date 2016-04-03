class OriginExperiment < ActiveRecord::Base
  belongs_to :basic_configuration
  validates :campaign_delimiter, presence: true
  validates :factor_delimiter, presence: true
end

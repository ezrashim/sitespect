class OriginExperiment < ActiveRecord::Base
  belongs_to :configuration
  validates :campaign_delimiter, presence: true
  validates :factor_delimiter, presence: true
end

class Configuration < ActiveRecord::Base
  validates :site_name, presence: true
  validates :status, presence: true
  validates :site_url, presence: true
  validates_format_of :site_url, with: /https:\/\/(\w{3}\.)?\w*.\w*/
  validates :variation, presence: true, numericality: { greater_than: 0, less_than: 101 }
  validates :default_behavior, presence: true
  validates :enable_detect_variation, inclusion: [true, false]
  validates :enable_AMPS, inclusion: [true, false]
  validates :enable_origin_experiements, inclusion: [true, false]
end

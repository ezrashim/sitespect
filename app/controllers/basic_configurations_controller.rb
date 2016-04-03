class BasicConfigurationsController < ApplicationController
  def new
    @basic_configuration = BasicConfiguration.new
    @amps_configuration = AmpsConfiguration.new
    @origin_experiment = OriginExperiment.new
  end
end

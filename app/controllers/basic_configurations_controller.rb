class BasicConfigurationsController < ApplicationController
  def new
    @basic_configuration = BasicConfiguration.new
    @amps_configuration = AmpsConfiguration.new
    @origin_experiment = OriginExperiment.new
  end

  def create
    binding.pry
    @basic_configuration = BasicConfiguration.new(basic_configuration_params)

    if @basic_configuration.save
      redirect_to root_path
    else
      flash.now[:notice] = @basic_configuration.errors.full_messages
      render 'new'
    end
  end

  def basic_configuration_params
    params.require(:basic_configuration).permit(
      :site_name,
      :status,
      :site_url,
      :variation,
      :default_behavior,
      :enable_detect_variation,
      :enable_AMPS,
      :enable_origin_experiements
    )
  end
end

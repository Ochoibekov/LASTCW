class OrgcommentsController < InheritedResources::Base
  before_action :set_post
  def create
    @orgcomment = @organization.orgcomments.build(orgcomment_params)
    @orgcomment.user_id = current_user.id
    if @orgcomment.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    else
      flash[:alert] = "Check the comment form, something went wrong."
      render root_path
    end
  end
  private

    def orgcomment_params
      params.require(:orgcomment).permit(:title,:user_id, :organization_id)
    end
  def set_post
    @organization = Organization.find(params[:organization_id])
  end
end


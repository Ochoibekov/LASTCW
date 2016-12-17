class OrgcommentsController < InheritedResources::Base

  private

    def orgcomment_params
      params.require(:orgcomment).permit(:title)
    end
end


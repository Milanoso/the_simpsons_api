class Api::V1::MembersController < ApplicationController
  before_action :set_member, only: %i[show update destroy]
  def index
    @members = Member.all
    render json: @members.to_json(only: %i[name talent hobby image_url ])
  end

  def show
    if @member
      render json: @member.to_json(only: %i[name talent hobby image_url])
    else
      render json: {status:404, message: "Not Found"}, status: 404
    end
  end

  def create
    if @member.save
    render json: @member, status: 201
    else
      render json: {status: 422, message: "Error creating member"}, status: :unprocessable_entity
    end
  end
    def update
      if @member
        if @member.update(member_params)
          render json: {status: 200, message: "Updated correctly"}, status: 200
        else
          render json: {message: "Error updating, please try agatin"}, status: :unprocessable_entity
        end
      else
        render json: {status: 404, message: "Not Found"}, status: 404
      end
    end

    def destroy
      @member.destroy
    end

    private
    def member_params
      params.require(:member).permit(:name, :hobby, :talent, :image_url)
    end

    def set_member
      @member = Member.find_by_id(params[:id])
    end
end

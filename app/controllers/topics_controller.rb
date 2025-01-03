class TopicsController < ApplicationController

  before_action :set_topic, only: %i[ show edit update destroy ]
  def index
    @topics = Topic.all
  end

  def show

  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to topics_path, notice: "Your topic was created successfully"
    else
      render :new
    end
  end

 def edit

 end

 def update

  if @topic.update(topic_params)
    redirect_to topics_path, notice: "Your topic was updated successfully"
  else
    render :edit
  end
 end

 def destroy
  @topic.destroy
  redirect_to topics_path, notice: "Your topic was deleted successfully"
 end


 private
  def topic_params
    params.require(:topic).permit(:title)
  end

  def set_topic
    @topic = Topic.find(params[:id])
  end
end

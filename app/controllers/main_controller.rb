class MainController < ApplicationController
  before_filter :authenticate
  
  def index
    PivotalTracker::Client.token = ENV["TRACKER_API_KEY"]
    @project = PivotalTracker::Project.find(ENV["TRACKER_PROJECT_ID"].to_i)
    @releases = []
    @iterations = [PivotalTracker::Iteration.current(@project)] + PivotalTracker::Iteration.backlog(@project)
    @iterations.each do |iteration|
      iteration.stories.each do |story|
        if story.story_type == "release"
          release = story
          release.estimated_finish = iteration.finish
          @releases << release
        end
      end
    end
  end

protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["USERNAME"] && password == ENV["PASSWORD"]
    end
  end
end

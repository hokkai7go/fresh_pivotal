require "yaml"
require "pivotal-tracker"

config = YAML.load_file File.join(File.dirname(__FILE__), "config", "application.yml")

PivotalTracker::Client.token(
  config["email"],
  config["password"]
)
@projects = PivotalTracker::Project.all
@projects.each do |p|
  p p.name
end

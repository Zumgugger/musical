class FilesController < ApplicationController
  def index
    @files_with_path = Dir.glob("app/assets/mp3/**/*.mp3")
    @files = []
    @files_with_path.each do |file|
      @files.append(file.split('/')[-1])  
    end
    
    @reno_files_with_path = Dir.glob("app/assets/mp3/reno/*.mp3")
    @reno = []
    @reno_files_with_path.each do |file|
      @reno.append(file.split('/')[-1])  
    end
    
    @stcatherines_files_with_path = Dir.glob("app/assets/mp3/stcatherines/*.mp3")
    @stcatherines = []
    @stcatherines_files_with_path.each do |file|
      @stcatherines.append(file.split('/')[-1])  
    end
  end

  def download
    send_file("app/assets/mp3/stcatherines/#{params[:name]}")
  end
end

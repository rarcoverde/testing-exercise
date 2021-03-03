require "base64"

#Instantiate all classes
Before do
    @liferayform = LiferayFormPage.new
end

#Add screenshot in report
After do |scenario|
    shot_file = page.save_screenshot('reports/screenshot.png')
    shot_b64 = Base64.encode64(File.open(shot_file,"rb").read)
    embed(shot_b64, "image/png", "Screenshot")
end
# testing-exercise
Liferay test exercise

# Automation Environment Settings

1 - Instalation guide ruby(version 2.5 recomended) and bundle guide -> https://youtu.be/39QzzQB-Ay8

2 - VScode extensions needed:
- Cucumber
- Ruby
- Meterial Icon Theme (Opitional just for better extensions icons)

3 - Commands to execute:
- Inside the command prompt, access the automation folder (e.g "cd 2.Automated Testing") and run the "bundle install" command to install all project dependencies

4 - Runing tests
Inside the command prompt:
- "cucumber"          -> This command runs all scenarios and does not generate a report
- "cucumber -t @S01"  -> This command executes only the scenarios with the tag S01
- "rake specs"        -> This command runs all scenarios and generate a report with screenshots (view inside the folder "reports")
- "rake specs [@S01]" -> This command executes only the scenarios with the tag S01 and generate a report with screenshots

5 - Automation Organization (BDD + Page Object)
- features -> 2.Automated Testing\features\form\liferayform.feature
- step_definitions -> 2.Automated Testing\features\step_definitions\liferayform_steps.rb
- Pages -> 2.Automated Testing\features\support\pages\liferayform_page.rb
- reports -> 2.Automated Testing\reports\report_2021-03-03T100606.html

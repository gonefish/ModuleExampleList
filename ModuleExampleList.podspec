Pod::Spec.new do |s|

  s.name         = "ModuleExampleList"
  s.version      = "0.0.11"
  s.summary      = "List App"

  s.description  = <<-DESC
                   Module Example List App
                   DESC

  s.homepage     = "https://github.com/gonefish/ModuleExampleList"

  s.license      = "MIT"

  s.author             = { "Q.GuoQiang" => "gonefish@gmail.com" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/gonefish/ModuleExampleList.git", :tag => s.version.to_s }

  s.source_files  = "ModuleExampleList/Module/*.{h,m}"

  s.resource = 'ModuleExampleList/Base.lproj/ListMain.storyboard'

  s.requires_arc = true

  s.dependency 'GQModularize'

end

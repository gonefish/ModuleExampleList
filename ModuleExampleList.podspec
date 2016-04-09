Pod::Spec.new do |s|

  s.name         = "ModuleExampleList"
  s.version      = "0.0.1"
  s.summary      = "List App"

  s.description  = <<-DESC
                   Module Example List App
                   DESC

  s.homepage     = "https://github.com/gonefish/ModuleExampleList"

  s.license      = "MIT"

  s.author             = { "Q.GuoQiang" => "gonefish@gmail.com" }

  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/gonefish/ModuleExampleList.git", :tag => s.version.to_s }

  s.source_files  = "ModuleExampleList/MasterViewController.{h,m}", "ModuleExampleList/DetailViewController.{h,m}"

  s.resource_bundles = { 'ListStoryBorad' => 'ModuleExampleList/Base.lproj/Main.storyboard' }

  s.requires_arc = true

end

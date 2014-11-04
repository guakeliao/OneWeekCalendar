Pod::Spec.new do |s|

  s.name         = "OneWeekCalendar"
  s.version      = "1.0.0"
  s.summary      = "A short description of OneWeekCalendar."

  s.description  = <<-DESC
                   控件内部采用自动布局

                   显示一周之内的的日期(TypeDefault:目前一周。TypeWeek:今天到下一周的今天)，并且可以设置日期下面的颜色
                   DESC

  s.homepage     = "https://github.com/guakeliao/OneWeekCalendar"

  s.license      = "MIT"

  s.author             = { "guakeliao" => "guakeliao@gmail.com" }

  s.platform     = :ios
  s.platform     = :ios, "8.0"

  s.source       = { :git => 'https://github.com/guakeliao/OneWeekCalendar.git', :tag => s.version.to_s}

  s.source_files  =  "oneWeekCaleadar/OneWeekCaleadar/**/*.{h,m}"
  s.resources = "oneWeekCaleadar/OneWeekCaleadar/*.xib"

  s.requires_arc = true

end

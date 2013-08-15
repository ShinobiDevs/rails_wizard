gem 'bootstrap-sass'

run 'mv app/assets/stylesheets/application.css app/assets/stylesheets/application.css.scss'

append_file "app/assets/stylesheets/application.css.scss" do
"@import 'bootstrap';\n"
end
append_file "app/assets/stylesheets/application.css.scss" do
"@import 'bootstrap-responsive';\n"
end
__END__

name: BootstrapSass
description: "Add Twitter's bootstrap framework SASS"
author: eladmeidar

category: css_framework
tags: [css, framework, bootstrap]

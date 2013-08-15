gem 'simple_form'

after_bundler do

  if recipes.include?("bootstrap_sass")
    generate "simple_form:install --bootstrap"
  else
    generate "simple_form:install"
  end
  

  if recipes.include? 'devise'
    generate "devise:views"
  end
end

__END__
name: Simple Form
description: "Utilize SimpleForm as a form builder"
author: eladmeidar

category: form_builder
tags: [form, builder, bootstrap]
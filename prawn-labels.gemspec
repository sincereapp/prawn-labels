PRAWN_LABELS_VERSION = "0.12.2.0"

Gem::Specification.new do |spec|
  spec.name    = "prawn-labels"
  spec.version = File.read(File.expand_path('VERSION', File.dirname(__FILE__))).strip
  spec.platform = Gem::Platform::RUBY
  spec.summary  = "Make labels using Prawn"
  spec.homepage = "http://github.com/voterletters/prawn-labels"
  spec.description = <<END_DESC
  Prawn/Labels takes the guess work out of generating labels using Prawn
END_DESC

  spec.files =  Dir.glob("{examples,lib}/**/**/*") +
                      ["Rakefile", "prawn-labels.gemspec"]
  spec.require_path = "lib"
  spec.required_ruby_version = '>= 3.0.0'
  spec.required_rubygems_version = ">= 3.0.0"

  spec.extra_rdoc_files = %w{README.md LICENSE COPYING}
  spec.rdoc_options << '--title' << 'Prawn/Labels Documentation' <<
                       '--main'  << 'README.md' << '-q'
  spec.authors = ["Jordan Byron"]
  spec.email = ["jordan.byron@gmail.com"]
  spec.rubyforge_project = "prawn-labels"

  spec.add_dependency 'prawn', ['>= 2.1.0', '< 3.0.0']
end

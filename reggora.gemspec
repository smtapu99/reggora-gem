
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'reggora/version'

Gem::Specification.new do |spec|
  spec.name          = 'reggora'
  spec.version       = Reggora::VERSION
  spec.authors       = ['fatpig']
  spec.email         = ['fatpig0416@gmail.com']

  spec.summary       = 'Library for Reggora Lender/Vendor API'
  spec.description   = 'This library makes request to https://sandbox.reggora.io/'
  spec.homepage      = 'https://rubygems.org/gems/raggora'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org/gems/'

    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['source_code_uri'] = 'https://github.com/0x15f/reggora-ruby'
    spec.metadata['changelog_uri'] = 'https://github.com/0x15f/reggora-ruby/blob/master/CHANGELOG.md'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = [
      "lib/reggora.rb",
      "lib/reggora/Adapters/api_client.rb",
      "lib/reggora/Adapters/lender_api_client.rb",
      "lib/reggora/Entity/loan.rb",
  ]
  # spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
  #   `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/})}
  # end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end

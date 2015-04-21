# Require core library
require 'middleman-core'
require 'git'

# Extension namespace
class MiddlemanRevision < ::Middleman::Extension
  option :work_dir, '.', 'Work directory path'

  def initialize(app, options_hash={}, &block)
    super

    app.set :work_dir, options.work_dir
  end

  def after_configuration
    # Do something
  end

  # A Sitemap Manipulator
  # def manipulate_resource_list(resources)
  # end

  # module do
  #   def a_helper
  #   end
  # end

  helpers do
    def revision(alt: nil)
      rev = nil
      rev = alt * 7 unless alt.nil?
      begin
        repo = Git.open(work_dir)
        rev = repo.revparse('HEAD')
        rev = rev[0..6]
      rescue => e
        STDERR.puts(e)
      end
      rev
    end
  end
end

# Register extensions which can be activated
# Make sure we have the version of Middleman we expect
# Name param may be omited, it will default to underscored
# version of class name

MiddlemanRevision.register(:revision)

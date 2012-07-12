class ConcernGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  check_class_collision

  class_option :type, type: :string, default: 'model',
                      desc: 'The type of concern, model or controller'

  class_option :extended, type: :boolean, default: false, aliases: ['-e'],
                          desc: 'Full concern (ClassMethods, InstanceMethods, included do)'

  desc 'This creates a model concern'
  def copy_concern_file
    template 'concern.rb', "app/#{options[:type].pluralize}/concerns/#{file_name}.rb"
  end
end

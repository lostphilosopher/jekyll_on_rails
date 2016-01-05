require 'rails/generators/base'

module JekyllOnRails
  module Generators
    class JekyllOnRailsGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc 'Creates the necessary directories to hold blog posts'
      def create_directories
        Dir.mkdir('app/views/blog') unless Dir.exist?('app/views/blog')
        Dir.mkdir('app/views/blog/published') unless Dir.exist?('app/views/blog/published')
        binding.pry
        copy_file("../../../config/views/index.html.haml", "app/views/blog/index.html.haml") unless File.exist?('app/views/blog/index.html.haml')
        copy_file("../../../config/controllers/blog_controller.rb", "app/controllers/blog_controller.rb") unless File.exist?('app/controllers/blog_controller.rb')
      end
    end
  end
end

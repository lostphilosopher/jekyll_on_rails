require 'rails/generators/base'

module JekyllOnRails
  module Generators
    class JekyllOnRailsGenerator < Rails::Generators::Base
      #source_root File.expand_path("../../templates", __FILE__)
      source_root

      desc 'Creates the necessary directories to hold blog posts'
      def create_directories
        Dir.mkdir('app/views/blog') unless Dir.exist?('app/views/blog')
        Dir.mkdir('app/views/blog/published') unless Dir.exist?('app/views/blog/published')
      end
    end
  end
end

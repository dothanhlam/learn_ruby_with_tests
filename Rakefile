require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = Dir.glob('**/*_spec.rb')
end

task default: :spec

desc "Create a new lesson setup. Usage: rake new_lesson[lesson_name]"
task :new_lesson, [:name] do |t, args|
  name = args[:name]
  if name.nil?
    puts "Error: Please provide a lesson name. Usage: rake new_lesson[lesson_name]"
    exit 1
  end

  require 'fileutils'

  # Convert name to snake_case if needed (simplified)
  dir_name = name.downcase.gsub(' ', '_')
  
  lib_dir = File.join(dir_name, 'lib')
  spec_dir = File.join(dir_name, 'spec')
  
  FileUtils.mkdir_p(lib_dir)
  FileUtils.mkdir_p(spec_dir)
  
  lib_file = File.join(lib_dir, "#{dir_name}.rb")
  spec_file = File.join(spec_dir, "#{dir_name}_spec.rb")
  
  unless File.exist?(lib_file)
    File.write(lib_file, <<~RUBY)
      def #{dir_name}
        #{true}
      end
    RUBY
    puts "Created #{lib_file}"
  end
  
  unless File.exist?(spec_file)
    File.write(spec_file, <<~RUBY)
      require_relative '../lib/#{dir_name}'

      RSpec.describe "#{name.capitalize}" do
        it "does something" do
          expect(#{dir_name}).to eq(true)
        end
      end
    RUBY
    puts "Created #{spec_file}"
  end
  
  puts "Lesson '#{dir_name}' scaffolding complete!"
end

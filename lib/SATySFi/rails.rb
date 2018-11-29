require "open3"
require "tmpdir"
require "SATySFi/rails/railtie"

module SATySFi
  module Rails
    class Error < StandardError; end

    class << self
      def call(template)
        <<~TEMPLATE
        Dir.mktmpdir do |dir|
          saty_path = File.join(dir, "a.saty")
          File.write(saty_path, #{template.source.inspect})

          output_path = File.join(dir, "a.pdf")
          Open3.capture2e("satysfi", "--bytecomp", "--output", output_path, saty_path) do |output, status|
            unless status.success?
              raise Error, output
            end
          end

          File.read(output_path, encoding: Encoding::BINARY)
        end
        TEMPLATE
      end
    end
  end
end

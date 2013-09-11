module Angular
  module Html2js
    def self.configure
      yield config
    end


    def self.config
      @config ||= Configuration.new
    end


    def self.reset_config!
      config.reset!
    end


    class Configuration
      attr_accessor :module_name, :post_process_html

      def cache_id(&block)
        if block
          @cache_id = block
        else
          @cache_id
        end
      end

      def reset!
        @cache_id = @module_name = nil
      end

      def method_missing(config_name, *)
        puts "Sorry, there is no such configuration option named #{config_name}"
        super
      end
    end
  end
end

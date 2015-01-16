module RBFS
  class File
      attr_reader :data_type, :data

      def initialize(obj = nil)
        @data_type = obj.class
        self.data = obj
      end

      def is_boolean(obj)
        if obj.class == TrueClass or obj.class == FalseClass
          @data_type = :boolean
        end
      end

      def is_string(obj)
        if obj.class == String
          @data_type = :string
        end
      end

      def is_symbol(obj)
        if obj.class == Symbol
          @data_type = :symbol
        end
      end

      def is_number(obj)
        if obj.class == Fixnum or obj.class == Float
          @data_type = :number
        end
      end

      def is_nil(obj)
        if obj.class == NilClass
          @data_type = :nil
        end
      end

      def data=(obj)
        is_nil(obj)
        is_number(obj)
        is_symbol(obj)
        is_string(obj)
        is_boolean(obj)
        @data = obj
      end

      def serialize(obj)
        "#{@data_type}:#{@data}"
      end
  end

  class Directory
    attr_reader :files, :directories

    def initialize()
      @files = Hash.new {}
      @directories = Hash.new {}
    end

    def add_file(name, file)
      @files[name] = file
    end

    def add_directory(name, directory)
      @directories[name] = directory
    end
  end
end

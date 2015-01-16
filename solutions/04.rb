module UI

 class TextScreen

   def self.draw(&block)
     UI::TextScreen.new.draw(&block)
   end

   def initialize
     @contents = ""
   end

   def draw(&block)
     instance_eval(&block)
     @contents
   end

   def vertical(&block)
     @add_new_line = true
     instance_eval(&block)
   end

   def horizontal(&block)
     if @add_new_line
         @add_new_line = false
         instance_eval(&block)
         @contents += "\n"
         @add_new_line = true
     end
   end

   def label(args)
     args[:border] ||= ''
     @contents += "#{args[:border]}#{args[:text]}#{args[:border]}"
     @contents += "\n" if @add_new_line
   end
  end
end

require 'singleton'
require 'rlibidgen32'

class Idgen32
  include Singleton
  
  def initialize #:nodoc:
    @struct = Rlibidgen32::Idgen32_ctx.new
    Rlibidgen32.idgen32_init(@struct)
  end
  
  # Generate the unique id
  def generate
    Rlibidgen32.idgen32(@struct)
  end
end

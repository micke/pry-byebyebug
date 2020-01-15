require "binding_of_caller"

module Kernel
  def byebug
    Pry.start(binding.of_caller(1))
  end

  def debugger
    Pry.start(binding.of_caller(1))
  end
end

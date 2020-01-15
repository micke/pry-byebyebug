require "binding_of_caller"

module Kernel
  def byebug do
    Pry.start(binding.of_caller(1))
  end

  def debugger do
    Pry.start(binding.of_caller(1))
  end
end

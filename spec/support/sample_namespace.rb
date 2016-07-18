# coding: utf-8

require 'as_namespace'

module Parent

  module Child

    def self.myself
      "Child"
    end

    module Grandson

      def self.myself
        "Grandson"
      end

    end

  end

end

class TestClass

  include AsNamespace

  as_namespace Parent::Child::Grandson, :grand
  as_namespace Parent::Child, :CHILD

  attr_reader :grandson, :child

  def initialize
    @grandson = grand.myself
    @child = CHILD.myself
  end

end

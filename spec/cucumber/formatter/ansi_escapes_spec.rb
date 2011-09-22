require 'spec_helper'
require 'cucumber/formatter/ansi_escapes'

module Cucumber
  module Formatter
    describe AnsiEscapes do
      include Cucumber::Formatter::AnsiEscapes

      it "failed should be red" do
        failed.should == "\e[31m"
      end

      it "failed arg should be red bold" do
        failed_arg.should == "\e[31m\e[1m"
      end

    end
  end
end

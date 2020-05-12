require 'test_helper'
require 'nlmt-wrappers/specification'
require 'nlmt-wrappers/version'

describe NlmtWrappers::Specification do

  before do
    NlmtWrappers::Specification.instance_variable_set(:@gem_wrappers_spec, nil)
  end

  it "finds specification" do
    NlmtWrappers::Specification.find.name.must_equal("nlmt-wrappers")
  end

  it "gets specification version" do
    NlmtWrappers::Specification.version.must_equal(NlmtWrappers::VERSION)
  end

  it "does not find imaginary gems" do
    NlmtWrappers::Specification.find("imaginary-gem").must_be_nil
  end

end

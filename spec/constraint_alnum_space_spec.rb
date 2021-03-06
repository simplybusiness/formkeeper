# -*- encoding: utf-8 -*-
require 'spec_helper'

describe FormKeeper::Constraint::AlnumSpace do

  it "validate value correctly" do

    constraint = FormKeeper::Constraint::AlnumSpace.new
    constraint.validate('abcd', true).should be_true
    constraint.validate('a1234bcd', true).should be_true
    constraint.validate('a%[]Aaa', true).should_not be_true
    constraint.validate('ab cd', true).should be_true

  end

end

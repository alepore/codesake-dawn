require 'spec_helper'
describe "The CVE-2014-2538 vulnerability" do
	before(:all) do
		@check = Codesake::Dawn::Kb::CVE_2014_2538.new
		# @check.debug = true
	end
  it "is reported when rack-ssl vulnerable version it has been found (1.4.0)" do
    @check.dependencies = [{:name=>'rack-ssl', :version=>'1.4.0'}]
    @check.vuln?.should   be_true
  end
  it "is reported when rack-ssl not vulnerable version it has been found (1.5.0)" do
    @check.dependencies = [{:name=>'rack-ssl', :version=>'1.5.0'}]
    @check.vuln?.should   be_false
  end
  it "must be filled with CVSS information"
end

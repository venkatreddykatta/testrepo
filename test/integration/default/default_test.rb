# InSpec test for recipe COOKBOOK_REPO_NAME::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/


##  Below is example only, please update for your Cookbook


# Only do inspec checks when on Redhat versions
only_if { inspec.os.redhat? }

describe package 'tmux' do
  it { should be_installed}
  its('version') { should eq '2.7-1.el8' }
end

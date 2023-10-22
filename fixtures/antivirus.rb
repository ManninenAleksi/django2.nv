control 'antivirus-software' do
  impact 1.0
  title 'Antivirus Software Presence'
  desc 'Ensure antivirus software is installed on the production machine.'

  only_if { os.linux? } # Run this check only on Linux

  describe package(F-Secure Server Security) do
    it { should be_installed }
  end
end

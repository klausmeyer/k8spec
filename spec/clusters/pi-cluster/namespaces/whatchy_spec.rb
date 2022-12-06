RSpec.describe 'Namespace: whatchy' do
  subject { Namespace.new('whatchy') }

  it { is_expected.to exist }
  it { is_expected.to have_a_deployment('whatchy').with_pods(count: 1, status: 'Running') }
end

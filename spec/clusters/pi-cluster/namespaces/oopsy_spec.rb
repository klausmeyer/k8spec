RSpec.describe 'Namespace: oopsy' do
  subject { Namespace.new('oopsy') }

  it { is_expected.to exist }

  it { is_expected.to have_a_deployment('oopsy-web').with_pods(count: 1, status: 'Running') }
  it { is_expected.to have_a_deployment('oopsy-sidekiq').with_pods(count: 1, status: 'Running') }

  it { is_expected.to have_a_statefulset('redis').with_pods(count: 1, status: 'Running') }
  it { is_expected.to have_a_statefulset('postgres').with_pods(count: 1, status: 'Running') }
end

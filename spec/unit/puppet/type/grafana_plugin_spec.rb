require 'spec_helper'
describe Puppet::Type.type(:grafana_plugin) do
  let(:plugin) do
    Puppet::Type.type(:grafana_plugin).new(name: 'grafana-whatsit')
  end

  it 'accepts a plugin name' do
    plugin[:name] = 'plugin-name'
    expect(plugin[:name]).to eq('plugin-name')
  end
  it 'requires a name' do
    expect do
      Puppet::Type.type(:grafana_plugin).new({})
    end.to raise_error(Puppet::Error, 'Title or name must be provided')
  end

  it 'accepts a plugin repo' do
    plugin[:repo] = 'https://nexus.company.com/grafana/plugins'
    expect(plugin[:repo]).to eq('https://nexus.company.com/grafana/plugins')
  end
  it 'accepts a plugin url' do
    plugin[:plugin_url] = 'https://github.com/example/example-custom-plugin/zipball/v1.0.0'
    expect(plugin[:plugin_url]).to eq('https://github.com/example/example-custom-plugin/zipball/v1.0.0')
  end

end

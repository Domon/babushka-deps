dep 'rbenv', template: 'bin' do
  installs 'rbenv'
end

dep 'rbenv-default-gems', template: 'managed' do
  requires 'rbenv'

  def script
    '`brew --prefix`/etc/rbenv.d/install/default-gems.bash'
  end

  met? { shell("test -f #{script}") }

  installs 'rbenv-default-gems'
end

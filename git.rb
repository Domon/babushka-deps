dep 'git', template: 'managed' do
  installs 'git'
end

dep 'diff-highlight' do
  requires 'git'

  def script
    '`brew --prefix git`/share/git-core/contrib/diff-highlight/diff-highlight'
  end

  met? { which('diff-highlight') }
  meet { shell("ln -s #{script} ~/bin/") }
end

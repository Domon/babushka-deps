dep 'zsh', template: 'managed' do
  installs 'zsh'
end

dep 'zsh-syntax-highlighting' do
  def plugin_dir
    shell('echo ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting')
  end

  met? { File.exists?("#{plugin_dir}/zsh-syntax-highlighting.plugin.zsh") }
  meet { git 'https://github.com/zsh-users/zsh-syntax-highlighting.git', to: plugin_dir }
end

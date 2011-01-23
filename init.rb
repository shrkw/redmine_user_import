require 'redmine'

Redmine::Plugin.register :redmine_user_import do
  name 'Redmine User Import plugin'
  author 'Hiroyuki SHIRAKAWA'
  description 'User import from csv'
  version '0.0.2'
  url 'https://github.com/shrkw/redmine_user_import'
  author_url 'http://twitter.com/#!/shrkwh, http://d.hatena.ne.jp/shrkw/'

#  permission :import_user_csv, :user_import => :index
  # caption localization does not work.
  menu :account_menu, :user_import, { :controller => 'user_import', :action => 'index' }, :caption => :user_import, :before => :logout, :if => Proc.new {User.current.admin?}
end

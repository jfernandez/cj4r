require 'fileutils'

cj_config = File.dirname(__FILE__) + '/../../../config/cj.yml'
FileUtils.cp File.dirname(__FILE__) + '/cj.yml.tpl', cj_config unless File.exist?(cj_config)
puts IO.read(File.join(File.dirname(__FILE__), 'README.markdown'))
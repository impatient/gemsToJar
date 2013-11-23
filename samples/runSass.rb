require 'sass'
require 'sass/exec'

def runSass(scssDir, cssDir,deb)

	deb.println('Start sass')
	Sass::Exec::Sass.new(%W(--compass #{scssDir}/common.scss:#{cssDir}/common.css)).parse
	deb.println('Sass Done')
	
end


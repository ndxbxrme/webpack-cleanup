fs = require 'fs-extra'

main = ->
  html = await fs.readFile 'dist/index.html', 'utf-8'
  html = html.replace /src="\//g, 'src="'
  await fs.writeFile 'dist/index.html', html, 'utf-8'
main()
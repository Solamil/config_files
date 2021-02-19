c.url.searchengines = {'DEFAULT': 'https://searx.tuxcloud.net/?q={}',
                       'yt':'http://www.youtube.com/results?search_query={}',
                       'ddg': 'https://duckduckgo.com/?q={}',
                       'aw': 'https://wiki.archlinux.org/index.php?search={}'}
c.url.default_page = 'https://searx.tuxcloud.net'
c.fonts.default_family = "Serif Tangut"
c.url.start_pages = c.url.default_page
c.content.geolocation = False 
c.content.notifications = False
c.downloads.location.directory = "/home/michael/dl/"
c.fonts.default_size = "10.5pt"
c.scrolling.smooth = True
c.content.autoplay = False
# c.content.private_browsing = True
c.completion.web_history.max_items = 1
c.content.headers.user_agent = "{upstream_browser_key}"
#c.messages.timeout

config.load_autoconfig()
# c.editor.command = ["nvim"]
# config.unbind('<Ctrl-v>', mode='normal')
config.bind(',M', 'spawn mpv {url}')
config.bind(',m', 'hint links spawn mpv {hint-url}')
config.bind(',p', 'spawn --userscript neo-qute-pass --no-insert-mode')
config.bind(',P', 'spawn --userscript neo-qute-pass --choose --no-insert-mode')

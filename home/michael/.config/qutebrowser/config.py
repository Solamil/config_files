c.url.searchengines = {'DEFAULT': 'https://searx.tuxcloud.net/?q={}',
                       'yt':'http://www.youtube.com/results?search_query={}',
                       'ddg': 'https://duckduckgo.com/?q={}'}
c.url.default_page = 'https://searx.tuxcloud.net'
c.url.start_pages = c.url.default_page
c.content.geolocation = False 
c.content.notifications = False
c.downloads.location.directory = "/home/michael/downloads/"
c.fonts.default_size = "11pt"
c.scrolling.smooth = True
c.content.autoplay = False
# c.content.private_browsing = True
c.completion.web_history.max_items = 1 
c.content.headers.user_agent = "{qutebrowser_version}"
#c.messages.timeout
# c.editor.command = ["nvim"]
# config.unbind('<Ctrl-v>', mode='normal')
config.bind(',m', 'spawn mpv {url}')
config.bind(',M', 'hint links spawn mpv {hint-url}')

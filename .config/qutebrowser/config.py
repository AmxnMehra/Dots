# Load settings
config.load_autoconfig()

# === General UI colors ===
c.colors.statusbar.normal.bg = "#000000"
c.colors.statusbar.normal.fg = "#ffffff"
c.colors.statusbar.command.bg = "#000000"
c.colors.statusbar.command.fg = "#ffffff"
c.colors.statusbar.insert.bg = "#000000"
c.colors.statusbar.insert.fg = "#ffffff"
c.colors.statusbar.url.fg = "#ffffff"
c.colors.statusbar.url.success.https.fg = "#ffffff"

# === Tabs ===
c.colors.tabs.bar.bg = "#000000"
c.colors.tabs.odd.bg = "#000000"
c.colors.tabs.even.bg = "#000000"
c.colors.tabs.odd.fg = "#ffffff"
c.colors.tabs.even.fg = "#ffffff"

# Selected (active) tab = light black bg, white text
c.colors.tabs.selected.odd.bg = "#1a1a1a"
c.colors.tabs.selected.even.bg = "#1a1a1a"
c.colors.tabs.selected.odd.fg = "#ffffff"
c.colors.tabs.selected.even.fg = "#ffffff"

c.tabs.indicator.width = 0
c.tabs.padding = {"top": 5, "bottom": 5, "left": 9, "right": 9}
c.tabs.position = "top"
c.tabs.width = "7%"
c.tabs.title.format = "{audio}{current_title}"

# === Hints ===
c.colors.hints.bg = "#000000"
c.colors.hints.fg = "#ffffff"
c.hints.border = "#ffffff"

# === Completion menu ===
c.colors.completion.fg = "#ffffff"
c.colors.completion.odd.bg = "#000000"
c.colors.completion.even.bg = "#000000"
c.colors.completion.category.bg = "#000000"
c.colors.completion.category.fg = "#ffffff"
c.colors.completion.item.selected.bg = "#ffffff"
c.colors.completion.item.selected.fg = "#000000"
c.colors.completion.match.fg = "#00ffff"
c.colors.completion.item.selected.match.fg = "#00ffff"

# === Messages / Downloads ===
c.colors.messages.info.bg = "#000000"
c.colors.messages.info.fg = "#ffffff"
c.colors.messages.error.bg = "#000000"
c.colors.messages.error.fg = "#ff0000"
c.colors.downloads.bar.bg = "#000000"
c.colors.downloads.start.bg = "#00ff00"
c.colors.downloads.start.fg = "#000000"
c.colors.downloads.stop.bg = "#888888"
c.colors.downloads.stop.fg = "#000000"
c.colors.downloads.error.bg = "#000000"
c.colors.downloads.error.fg = "#ff0000"

# === Web content ===
c.colors.webpage.bg = "#000000"
c.colors.webpage.darkmode.enabled = True
c.colors.webpage.darkmode.algorithm = "lightness-cielab"
c.colors.webpage.darkmode.policy.images = "never"

# === Start Page ===
c.url.start_pages = ["https://www.duckduckgo.com"]

# === Fonts ===
c.fonts.default_size = "13pt"
c.fonts.web.size.default = 20
c.fonts.web.family.fixed = "monospace"
c.fonts.web.family.sans_serif = "monospace"
c.fonts.web.family.serif = "monospace"
c.fonts.web.family.standard = "monospace"

# === Search Engines ===
c.url.searchengines = {
    "DEFAULT": "https://duckduckgo.com/?q={}",
    "!aw": "https://wiki.archlinux.org/?search={}",
    "!gh": "https://github.com/search?o=desc&q={}&s=stars",
    "!yt": "https://www.youtube.com/results?search_query={}",
}

# === Tab display ===
c.tabs.show = "multiple"
c.tabs.new_position.unrelated = "next"

# === Session handling ===
c.auto_save.session = True

# === Privacy settings ===
config.set("content.webgl", False, "*")
config.set("content.canvas_reading", False)
config.set("content.geolocation", False)
config.set("content.webrtc_ip_handling_policy", "default-public-interface-only")
config.set("content.cookies.accept", "all")
config.set("content.cookies.store", True)
c.content.blocking.enabled = True
# If using python-adblock:
# c.content.blocking.method = 'adblock'

# === Key bindings ===
config.bind("=", "cmd-set-text -s :open")
config.bind("h", "history")
config.bind("cs", "cmd-set-text -s :config-source")
config.bind("tH", "config-cycle tabs.show multiple never")
config.bind("sH", "config-cycle statusbar.show always never")
config.bind("T", "cmd-set-text -s :open -t")
config.bind("pP", "open -- {primary}")
config.bind("pp", "open -- {clipboard}")
config.bind("pt", "open -t -- {clipboard}")
config.bind("qm", "macro-record")
config.bind("<ctrl-y>", "spawn --userscript ytdl.sh")
config.bind("tT", "config-cycle tabs.position top left")
config.bind("gJ", "tab-move +")
config.bind("gK", "tab-move -")
config.bind("gm", "tab-move")

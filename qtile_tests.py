from libqtile.command.client import InteractiveCommandClient

c = InteractiveCommandClient()

info = c.widget['clock'].info()

print(info)


# mypy: ignore-errors
from __future__ import annotations


c = get_config()

c.TerminalIPythonApp.display_banner = True
c.InteractiveShell.autoindent = True
c.InteractiveShell.confirm_exit = False
c.InteractiveShell.editor = 'nano'
c.InteractiveShell.xmode = 'Context'

c.PrefilterManager.multi_line_specials = True

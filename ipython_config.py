# Configuration file for ipython.

c = get_config()

c.InteractiveShellApp.exec_lines = [
    'import json',
    'import os'
]
c.IPKernelApp.exec_lines = [
    'import json',
    'import os',
    'import sys',
]

c.FileNotebookManager.notebook_dir = '/home/ubuntu/notebooks'
c.NotebookApp.notebook_dir = '/home/ubuntu/notebooks'


c.InteractiveShell.autoindent = True
c.InteractiveShell.colors = 'Linux'
c.InteractiveShell.editor = 'vi'

c.IPKernelApp.pylab = 'inline'  # if you want plotting support always
c.NotebookApp.open_browser = False
c.NotebookApp.port = 8888
c.NotebookApp.ip = '*'

# c.NotebookApp.base_url = '{{ url_prefix }}/'
# c.NotebookApp.base_kernel_url = '{{ url_prefix }}/'
# c.NotebookApp.webapp_settings = {'static_url_prefix':'{{ url_prefix }}/static/'}

c.NotebookApp.enable_mathjax = False

import sublime, sublime_plugin
import os
import re
import subprocess
regex = re.compile('.*:(\d+):.*')
process = None

class CtagRefresh(sublime_plugin.EventListener):
	def on_post_save_async(self, view):
		path = view.file_name()
		if os.path.splitext(path)[-1] != ".lua":
			return

		currentWorkDir = os.path.dirname(path)
		while len(os.path.split(currentWorkDir)[1]) > 0:
			currentWorkDir = os.path.split(currentWorkDir)[0]
			found = os.path.join(currentWorkDir, "ctag.bat")
			if os.path.isfile(found):
				os.chdir(os.path.dirname(found))
				global process
				if process:
					process.kill()
					process = subprocess.Popen(["ctag.bat"], shell=True, stdout=subprocess.PIPE)
					return
				process = subprocess.Popen(["ctag.bat"], shell=True, stdout=subprocess.PIPE)
				break
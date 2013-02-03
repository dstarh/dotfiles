import sublime_plugin
import os

class TouchFile(sublime_plugin.EventListener):
  def on_pre_save(self, view):
    view.run_command("touch_file")

class TouchFileCommand(sublime_plugin.TextCommand):
  def run(self, text):
    fn = self.view.file_name().encode("utf_8")
    if not os.path.exists(fn):
      os.system('sudo touch ' + fn)

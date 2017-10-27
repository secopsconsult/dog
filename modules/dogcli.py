class dogcli(cmd.Cmd):
	def do_greet(self,line):
		print "Hello"

	def do_EOF(self,line):
		return True

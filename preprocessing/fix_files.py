import os 

def file_get_contents(file_name): 
	with open(file_name) as f:
		return f.read()

def whatisthis(s):
	if isinstance(s, str):
		print "ordinary string"
	elif isinstance(s, unicode):
		print "unicode string"
	else:
		print "not a string"

if __name__ == '__main__': 

	# Grab all subdirectories in training directory 
	directory = '/Users/Kevin/Dev/weka-text-classification/data/training'
	all_dirs = os.listdir(directory) 

	for curr_dir in all_dirs: 

		full_dir_path = directory + "/" + curr_dir

		# Only look for files if it's a directory 
		if not os.path.isdir(full_dir_path): 
			continue

		# Get all the files in the directory 
		all_files = os.listdir(full_dir_path)
		for curr_file in all_files:

			# Only format text files 
			extension = os.path.splitext(curr_file)[1]
			if extension != '.txt': 
				continue

			full_file_path = full_dir_path + "/" + curr_file

			# Removes the first line from every file and overwrites it 
			cmd = "tail -n +2 " + full_file_path + " > temp.txt; mv temp.txt " + full_file_path
			os.system(cmd)
			print "Modified file " + curr_dir + "/" + curr_file


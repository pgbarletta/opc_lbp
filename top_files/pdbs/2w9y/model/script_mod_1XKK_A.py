from modeller import *
from modeller.automodel import *    # Load the automodel class

log.verbose()
env = environ()

# directories for input atom files
env.io.atom_files_directory = ['.', '../atom_files']

class MyModel(automodel):
	def select_atoms(self):
		return selection(self.residue_range('40', '49'))

a = MyModel(env, alnfile = 'to_model',
	knowns = '2W9Y', sequence = '2W9Y_full',
	assess_methods=(assess.DOPE,
		assess.GA341))
a.starting_model= 1
a.ending_model  = 50

a.make()

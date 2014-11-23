python <<EOF
import sys
import os
import vim

def find_all_gitignore_rules(rootdir):
	rule_dict = {};
	for subdir, dirs, files in os.walk(rootdir):
		for file in files:
			if file == '.gitignore':
				#print os.path.join(subdir, file)
				with open(os.path.join(subdir, file)) as f:
					for rule in [ rule.strip() for rule in f.readlines() if not rule.startswith('#') ]:
						if not rule == '':
							rule_dict[rule] = True
	print rule_dict.keys()

plugin_dir = os.path.dirname(vim.eval('expand("<sfile>")'))
sys.path.insert(0, plugin_dir)
find_all_gitignore_rules(os.getcwd())
from vimfilepirate import filepirate_open, filepirate_key, filepirate_callback, filepirate_accept, filepirate_cancel, filepirate_up, filepirate_down, filepirate_bs, filepirate_rescan, filepirate_enter_insert_mode, filepirate_enter_normal_mode
EOF

if !exists("g:filepirate_map_leader") || g:filepirate_map_leader != 0
	noremap <Leader>t :python filepirate_open()<CR>
endif


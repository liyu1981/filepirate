python <<EOF
import sys
import os
import vim

plugin_dir = os.path.dirname(vim.eval('expand("<sfile>")'))
sys.path.insert(0, plugin_dir)
from vimfilepirate import filepirate_open, filepirate_key, filepirate_callback, filepirate_accept, filepirate_cancel, filepirate_up, filepirate_down, filepirate_bs, filepirate_rescan
EOF

nmap <Leader>t :python filepirate_open()<CR>


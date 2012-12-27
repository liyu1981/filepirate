python <<EOF
import sys
sys.path.append('.')
from vimfilepirate import filepirate_open, filepirate_key, filepirate_callback, filepirate_accept, filepirate_cancel, filepirate_up, filepirate_down, filepirate_bs, filepirate_rescan
EOF

nmap <Leader>t :python filepirate_open()<CR>

define(`_UID_', `syscmd(id -u | tr -d \\n)')dnl
include(`run.sh.in')dnl

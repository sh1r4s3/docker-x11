define(`_USER_', `syscmd(id -un | tr -d \\n)')dnl
define(`_UID_', `syscmd(id -u | tr -d \\n)')dnl
define(`_GID_', `syscmd(id -g | tr -d \\n)')dnl
include(`Dockerfile.in')dnl

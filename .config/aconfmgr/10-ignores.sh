#!/bin/bash


IgnorePath '/etc/*'
IgnorePath '/boot/*'
IgnorePath '/etc/.pwd.lock'
IgnorePath '/etc/.updated'
IgnorePath '/etc/ca-certificates/*'
IgnorePath '/etc/ld-so.cache'
IgnorePath '/etc/machine-id'
IgnorePath '/etc/pacman.d/gnupg/*'
IgnorePath '/etc/ssl/certs/*'
IgnorePath '/etc/lvm/*'
IgnorePath '/etc/passwd-'
IgnorePath '/etc/shadow-'
IgnorePath '/etc/group-'
IgnorePath '/etc/gshallow-'
IgnorePath '/etc/pki/*'
IgnorePath '/etc/light*'
IgnorePath '/etc/ssh/ssh_host_*'
IgnorePath '/etc/resolv.conf'
IgnorePath '/etc/fonts/*'
IgnorePath '~/.local/bin'

IgnorePath '/lost+found'

IgnorePath '/usr/bin/*'
IgnorePath '/usr/lib/*'
IgnorePath '/usr/share/*'

IgnorePath '/var/*'

IgnorePath '*.bak'
IgnorePath '*.sbak'
IgnorePath '*.pacnew'
IgnorePath '*.pacsave'

IgnorePackage 'virtualbox-guest-utils'
IgnorePackage 'npm'
IgnorePackage 'node'
IgnorePackage 'yay'
IgnorePackage 'yay-git'
IgnorePackage 'aconfmgr-git'

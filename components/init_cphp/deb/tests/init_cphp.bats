@test "init_cphp_env" {
  [ "${CONTINUOUSPHP}" = "continuousphp" ]
  [ "${TERM}" = "xterm" ]
}

@test "init_cphp_package" {
    dpkg-query -l apt-utils
    [ 0 -eq $? ]
    dpkg-query -l ca-certificates
    [ 0 -eq $? ]
    dpkg-query -l rpm
    [ 0 -eq $? ]
    dpkg-query -l zip
    [ 0 -eq $? ]
    dpkg-query -l unzip
    [ 0 -eq $? ]
    dpkg-query -l curl
    [ 0 -eq $? ]
    dpkg-query -l vim
    [ 0 -eq $? ]
    dpkg-query -l git
    [ 0 -eq $? ]
    dpkg-query -l build-essential
    [ 0 -eq $? ]
    dpkg-query -l sudo
    [ 0 -eq $? ]
    dpkg-query -l openssh-server
    [ 0 -eq $? ]
    [ -f /etc/dpkg/dpkg.cfg.d/01_nodoc ]
    which nc
    [ 0 -eq $? ]
    which envsubst
    [ 0 -eq $? ]

}

@test "setting_cphp_user" {
  [ $(getent group cphp) ]
  [ -f /etc/sudoers.d/cphp ]
  id -u cphp
  [ 0 -eq $? ]
  [ -d /home/cphp/var ]
  [ -f /etc/profile.d/cphp.sh ]
}

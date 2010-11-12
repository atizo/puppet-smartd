class smartd::disable inherits smartd {
  Package['smartmontools']{
    ensure => absent,
  }
  Service['smartd']{
    ensure => stopped,
    enable => false,
    hasstatus => true,
    require => Package['smartmontools'],
  }
}

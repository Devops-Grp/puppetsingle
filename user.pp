user { 'testuser':
  ensure             => 'present',
  comment            => 'testuser creation',
  home               => '/home/testuser',
  password_max_age   => 99999,
  password_min_age   => 0,
  password_warn_days => 7,
  shell              => '/bin/bash',
}

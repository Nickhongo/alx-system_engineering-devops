# This manifest changes to SSh client config
file { '/home/your_username/.ssh/config':
  ensure  => file,
  owner   => 'your_username',
  group   => 'your_group',
  mode    => '0644',
  content => "
Host *
    PasswordAuthentication no

Host your_server_ip
    IdentityFile ~/.ssh/school
",
}

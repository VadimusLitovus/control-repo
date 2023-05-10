class profile::agent_nodes {
  include dockeragent
  docker_network {'test_net': ensure => present,}
  dockeragent::node { 'web.puppet.vm': }
  dockeragent::node { 'db.puppet.vm': }
}

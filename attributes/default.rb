# User
node.default['group']             = 'deployer'
node.default['user']['name']      = 'deployer'
node.default['user']['password']  = '$1$justsol$nQbn18jmYoreJL/jpDpu31'

# Nodejs
node.default['nodejs']['dir']     = '/usr/local'
node.default['nodejs']['version'] = '0.10.34'

# Postgres
node.default['db']['root_password']     = '$1$coddeys$FNm9SjLz50Nk5BL1KU17r0'
node.default['db']['user']['name']      = 'deployer'
node.default['db']['user']['password']  = '$1$justsol$nQbn18jmYoreJL/jpDpu31'

# Application
node.default['app'] = 'unwb'

# Application
node.default['ruby']['version'] = '2.1.5'


# openssl passwd -1 -salt "yoursaltphrase"

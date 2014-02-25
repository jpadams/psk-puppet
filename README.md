psk-puppet
==========

Puppet configuration exercise.

```
To run a Vagrant instance to check the configration. (I’ve only tested this on my Macbook) 
  $ git clone https://github.com/zwayhowder/psk-puppet.git
  $ cd Puppet-ex
  $ vagrant up

This uses the Puppetlabs Ubuntu 12.04 vagrant image, so you can modify the Vagrantfile to match your existing copy. It should also work on any Precise Pangolin image.

To test in an existing host:
  $ git clone https://github.com/zwayhowder/psk-puppet.git
  $ puppet module install jfryman/nginx
  $ puppet module install puppetlabs/vcsrepo

Modify the manifest/site.pp to match your hostname.  

```

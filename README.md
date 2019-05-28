# Ioncube VVV utility for php 7.2

This utility will set up [Ioncube](http://www.ioncube.com/) on your [VVV](https://github.com/Varying-Vagrant-Vagrants/VVV) installation. This is required by the [Memberium](https://memberium.com/) WordPress plugin.

## Usage

In your `vvv-custom.yml` file add under `utilities`:

```yml
utilities:
  core:
    - memcached-admin
    - opcache-status
    - phpmyadmin
    - webgrind
    ...
  ioncube:
    - ioncube72
utility-sources:
  ioncube:
    repo: https://github.com/IvanGrginovInf/vvv-ioncube-utility-php-72
    branch: master
```

The `core` utilities are there by default.

After adding it, make sure you re-provision your VVV with `vagrant reload --provision`.
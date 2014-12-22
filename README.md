modularit-radius Cookbook
==========================

This cookbook install and configure a radius server with ruckus extensions

Requirements
------------

This cookbook is designed to work on a CentOS7 server. It will install FreeRadius from packages and setup a configuration ready to handle WIFI EAP and 802.1x authentication.

In order to use a samba4 or active directory backend, the host should already be configured to connect to AD

### Join an Active Directory (or Samba4)

  * Install samba-winbind

```yum install samba-winbind```

  * Setup domain mebership with authconfig

Configuration
-------------

This recipes creates two directories in ``/etc/raddb``, one for configurations managed by chef (```/etc/raddb/chef```) and one for local configurations (```/etc/raddb/local```). Local changes should be done **ONLY** on files located in the local directory, because otherwise any change will be overwriten by chef

Attributes
----------
TODO: List you cookbook attributes here.

e.g.
### modularit-template::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['modularit-template']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----

#### modularit-template::default

### modularit-template::default
## modularit-template::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `modularit-template` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[modularit-template]"
  ]
}
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Kuko Armas <kuko@canarytek.com>

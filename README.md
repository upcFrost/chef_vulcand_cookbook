vulcand Cookbook
================
This cookbook installs and configures Vulcand load-balancer/proxy

Requirements
------------
#### Cookbooks
- `docker` - If the `docker` or `source_docker` install method is chosen
- `golang` - If the `source` install method is chosen

#### Packages
- `etcd` - Vulcand use Etcd to store its configuration

Attributes
----------
#### vulcand::default
JSON: `['value']` == `node['vulcand']['value']`

<table>
  <caption>Docker-specific options</caption>
  <tr>
    <th>Resource</th>
    <th>JSON</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>:vulcand_docker_repo</tt></td>
    <td><tt>['vulcand_docker_repo']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'mailgun/vulcand'</tt></td>
  </tr>
  <tr>
    <td><tt>:vulcand_docker_tag</tt></td>
    <td><tt>['vulcand_docker_tag']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'v0.8.0-beta.2'</tt></td>
  </tr>
  <tr>
    <td><tt>:golang_docker_repo</tt></td>
    <td><tt>['golang_docker_repo']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'golang'</tt></td>
  </tr>
  <tr>
    <td><tt>:golang_docker_tag</tt></td>
    <td><tt>['golang_docker_tag']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'latest'</tt></td>
  </tr>
  <tr>
    <td><tt>:bin_path</tt></td>
    <td><tt>['bin_path']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'/usr/local/bin'</tt></td>
  </tr>
  <tr>
    <td><tt>:conf_dir</tt></td>
    <td><tt>['conf_dir']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'/etc/vulcand'</tt></td>
  </tr>
  <tr>
    <td><tt>:install_method</tt></td>
    <td><tt>['install_method']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'source_docker'</tt></td>
  </tr>
# Source compile command
  <tr>
    <td><tt>:src_command</tt></td>
    <td><tt>['src_command']</tt></td>
    <td>String</td>
    <td></td>
    <td>See attributes.rb</td>
  </tr>
</table>

<table>
  <caption>General run options</caption>
  <tr>
    <th>Resource</th>
    <th>JSON</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>:apiInterface</tt></td>
    <td><tt>['run_opts']['apiInterface']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'0.0.0.0'</tt></td>
  </tr>
  <tr>
    <td><tt>:apiPort</tt></td>
    <td><tt>['run_opts']['apiPort']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'8182'</tt></td>
  </tr>
  <tr>
    <td><tt>:certPath</tt></td>
    <td><tt>['run_opts']['certPath']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>:default_listener</tt></td>
    <td><tt>['run_opts']['default_listener']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>true</tt></td>
  </tr>
  <tr>
    <td><tt>:endpointDialTimeout</tt></td>
    <td><tt>['run_opts']['endpointDialTimeout']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'5s'</tt></td>
  </tr>
  <tr>
    <td><tt>:endpointReadTimeout</tt></td>
    <td><tt>['run_opts']['endpointReadTimeout']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'50s'</tt></td>
  </tr>
  <tr>
    <td><tt>:etcd</tt></td>
    <td><tt>['run_opts']['etcd']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'http://localhost:4001'</tt></td>
  </tr>
  <tr>
    <td><tt>:etcdCaFile</tt></td>
    <td><tt>['run_opts']['etcdCaFile']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>:etcdCertFile</tt></td>
    <td><tt>['run_opts']['etcdCertFile']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>:etcdConsistency</tt></td>
    <td><tt>['run_opts']['etcdConsistency']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'STRONG'</tt></td>
  </tr>
  <tr>
    <td><tt>:etcdKey</tt></td>
    <td><tt>['run_opts']['etcdKey']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'vulcand'</tt></td>
  </tr>
  <tr>
    <td><tt>:etcdKeyFile</tt></td>
    <td><tt>['run_opts']['etcdKeyFile']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>:etcdSyncIntervalSeconds</tt></td>
    <td><tt>['run_opts']['etcdSyncIntervalSeconds']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>0</tt></td>
  </tr>
  <tr>
    <td><tt>:interface</tt></td>
    <td><tt>['run_opts']['interface']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>:log</tt></td>
    <td><tt>['run_opts']['log']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'console'</tt></td>
  </tr>
  <tr>
    <td><tt>:logSeverity</tt></td>
    <td><tt>['run_opts']['logSeverity']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'warning'</tt></td>
  </tr>
  <tr>
    <td><tt>:pidPath</tt></td>
    <td><tt>['run_opts']['pidPath']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>:port</tt></td>
    <td><tt>['run_opts']['port']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'8181'</tt></td>
  </tr>
  <tr>
    <td><tt>:readTimeout</tt></td>
    <td><tt>['run_opts']['readTimeout']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'1m0s'</tt></td>
  </tr>
  <tr>
    <td><tt>:sealKey</tt></td>
    <td><tt>['run_opts']['sealKey']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>:serverMaxHeaderBytes</tt></td>
    <td><tt>['run_opts']['serverMaxHeaderBytes']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>1048576</tt></td>
  </tr>
  <tr>
    <td><tt>:serverReadTimeout</tt></td>
    <td><tt>['run_opts']['serverReadTimeout']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'1m0s'</tt></td>
  </tr>
  <tr>
    <td><tt>:serverWriteTimeout</tt></td>
    <td><tt>['run_opts']['serverWriteTimeout']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'1m0s'</tt></td>
  </tr>
  <tr>
    <td><tt>:statsdAddr</tt></td>
    <td><tt>['run_opts']['statsdAddr']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>:statsdPrefix</tt></td>
    <td><tt>['run_opts']['statsdPrefix']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>nil</tt></td>
  </tr>
</table>

<table>
  <caption>Run options for docker</caption>
  <tr>
    <th>Resource</th>
    <th>JSON</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>:container_name</tt></td>
    <td><tt>['container_name']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'vulcand'</tt></td>
  </tr>
  <tr>
    <td><tt>:container_port</tt></td>
    <td><tt>['container_port']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>['8181:8181', '8282:8282']</tt></td>
  </tr>
  <tr>
    <td><tt>:network_mode</tt></td>
    <td><tt>['network_mode']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'host'</tt></td>
  </tr>
  <tr>
    <td><tt>:vulcand_docker_bin</tt></td>
    <td><tt>['vulcand_docker_bin']</tt></td>
    <td>String</td>
    <td></td>
    <td><tt>'/go/bin/vulcand'</tt></td>
  </tr>
</table>

Usage
-----
#### vulcand::default
Include `vulcand` in your node's `run_list` to install the software:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[vulcand]"
  ]
}
```

#### vulcand_docker
Call vulcand_docker from your cookbook to start the docker container
with the run options from `node['vulcand']['run_opts']`

#### vulcand_service
Create and configure the systemd service for vulcand.
Requires env vars patch integration (see https://github.com/vulcand/vulcand/pull/286)

Contributing
------------
TODO: (optional) If this is a public cookbook, detail the process for contributing. If this is a private cookbook, remove this section.

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors:
  Petr Belyaev <upcfrost@gmail.com>

# Firewall manager

Installs and configures `ferm`, an `iptables` wrapper.
Additional rules can be created by using `firewall_include` definition.

## Usage

1. Create `your_cookbook/templates/default/name.erb`
2. In your cookbook insert `firewall_rule 'name'` block
3. ???
4. Profit

For more information about `ferm` syntax, please visit
http://ferm.foo-projects.org.

## Definition parameters

* `enable` - enable firewall rule
* `source` - source template, `name.erb` by default
* `variables` - variables to pass to the template
* `cookbook` - where to look for the template
* `priority` - rule priority


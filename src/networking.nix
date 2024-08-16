# 
{ config, pkgs, ... }:

{
  networking = {
    defaultGateway = {
      address = "10.0.9.33";
      interface = "ens18";
    };
    nameservers = [ "10.0.9.33" ];
    domain = "some.company.local";
    search = [ "some.company.local" ];
    interfaces = {
      ens18.ipv4.addresses = [{
        address = "10.0.9.37";
        prefixLength = 28;
      }];
      vlan2.ipv4.addresses = [{
        address = "192.168.2.2";
        prefixLength = 24;
      }];
      vlan3.ipv4.addresses = [{
        address = "192.168.3.2";
        prefixLength = 24;
      }];
    };

    vlans = {
      vlan2 = {
        id = 2;
        interface = "ens19";
      };
      vlan3 = {
        id = 3;
        interface = "ens19";
      };
    };
  };
}

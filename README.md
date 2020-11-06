# Automated template creation using Hashicorp Packer

Authored by Romain Decker [@woueb](https://github.com/cloudmaniac), maintained (by Nicolas MICHEL [@vpackets](https://twitter.com/vpackets) / [LinkedIn](https://www.linkedin.com/in/mclnicolas/) / [Blog](http://vpackets.net/) 

_**This disclaimer informs readers that the views, thoughts, and opinions expressed in this series of posts belong solely to the author, and not necessarily to the author’s employer, organization, committee or other group or individual.**_

## News

(2020/04/27) Added support for Ubuntu 20.04 LTS (Focal Fosssa).

(2020/02/18) I updated recently my template to leverage the vsphere-iso builder (instead of vmware-iso); The vsphere-iso builder, previously maintained by JetBrains, has been merged with the Packer core in [Packer 1.5.2](https://github.com/hashicorp/packer/blob/v1.5.4/CHANGELOG.md#152-february-12-2020). It will be officially supported by the Packer team at HashiCorp moving forward.

I moved to the vsphere-iso builder for 2 main reasons:
* This builder uses the vSphere API and does neither require the SSH service running on the ESXi host nor ESXi host modification (GuestIPHack enabled).
* I can use a distributed port group to connect my template during the creation.

## Overview

> **Note**: Ubuntu 18.04.04 LTS (Bionic Beaver) and 20.04 LTS (Focal Fossa) are the only templates provided in this repository.

## Usage

Step 1 - Clone the git repository.

Step 2 - Edit the `var-ubuntu-18.04.json` or the `var-ubuntu-20.04.json` file.

Step 3 - Build the template(s).

* `./build-ubuntu-18.04.sh`
* `./build-ubuntu-20.04.sh`

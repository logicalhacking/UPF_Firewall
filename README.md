# Formal Network Models and Their Application to Firewall Policies (UPF_Firewall)

This git repository contains a local mirror of
[A Formal Network Model and Their Application to Firewall Policies](https://www.isa-afp.org/entries/UPF_Firewall.shtml)
entry of the
[Archive of Formal Proofs (AFP)](https://www.isa-afp.org).

The official AFP releases are tagged. Additionally, this repository
may contain extensions (i.e., a development version) that may be
submitted (as an update of the UPF_Firewall entry) at a later stage.

## Installation

This project depends on another [AFP](https://www.isa-afp.org) entry: 
[The Unified Policy Framework (UPF)](https://www.isa-afp.org/entries/UPF.shtml). 
Please follow the [official guidelines](https://www.isa-afp.org/using.shtml)
for installing the AFP locally. For short:
* [Download](https://www.isa-afp.org/release/afp-current.tar.gz) the complete AFP
* Extract the downloaded archive to an directory of your choice
* Let's assume the extracted archive lives in `/home/isabelle/afp`, now execute:

```console
achim@logicalhacking:~$ isabelle components -u "/home/isabelle/afp/thys"
```

## How to build

```console
achim@logicalhacking:~$ isabelle build -D UPF_Firewall
```

## Authors

* [Achim D. Brucker](http://www.brucker.ch/)
* Lukas Brügger
* [Burkhart Wolff](https://www.lri.fr/~wolff/)

## License

This project is licensed under a 3-clause BSD-style license.

SPDX-License-Identifier: BSD-3-Clause

## Upstream Repository

The upstream git repository, i.e., the single source of truth, for this project is hosted 
by the [Software Assurance & Security Research Team](https://logicalhacking.com) at
<https://git.logicalhacking.com/afp-mirror/UPF_Firewall>.

## Publications
* Achim D. Brucker, Lukas Brügger, and Burkhart Wolff. Formal Firewall
  Conformance Testing: An Application of Test and Proof Techniques. In
  Software Testing, Verification & Reliability (STVR), 25 (1), pages
  34-71, 2015.
  https://www.brucker.ch/bibliography/abstract/brucker.ea-formal-fw-testing-2014

# Formal Network Models and Their Application to Firewall Policies (UPF-Firewall)
This repository contains the development version of the (future) 
[Archive of Formal Proofs (AFP)](https://www.isa-afp.org) submission
[A Formal Network Model and Their Application to Firewall Policies](https://www.isa-afp.org/entries/UPF-Firewall.shtml).


## Installation
This project depends on another [AFP](https://www.isa-afp.org) entry: 
[The Unified Policy Framework (UPF)](https://www.isa-afp.org/entries/UPF.shtml). 
Please follow the [official guidelines](https://www.isa-afp.org/using.shtml)
for installing the AFP locall. For short:
* [Download](https://www.isa-afp.org/release/afp-current.tar.gz) the complete AFP
* Extract the downloaded archive to an directory of your choice
* Let's assume the extracted archive lives in `/home/isabelle/afp`, now execute:

```
mkdir -p ~/.isabelle/Isabelle2016-1/etc
echo "/home/isabelle/afp" >> ~/.isabelle/Isabelle2016-1/etc/components
```

Now, you can either link the UPF entry to a sibling directory of UPF-Firewall such 
that the import `../../UPF/UPF` in `PacketFilter/PolicyCore.thy` is valid. Alternatively, 
you need to change this import to `$AFP/UPF/UPF`.

## How to build
```
isabelle build -d UPF-Firewall . UPF-Firewall
```

## Authors
* [Achim D. Brucker](http://www.brucker.ch/)
* Lukas Brügger
* [Burkhart Wolff](https://www.lri.fr/~wolff/)

## License
This project is licensed under a 3-clause BSD-style license.

## Publications
* Achim D. Brucker, Lukas Brügger, and Burkhart Wolff. Formal Firewall
  Conformance Testing: An Application of Test and Proof Techniques. In
  Software Testing, Verification & Reliability (STVR), 25 (1), pages
  34-71, 2015.
  https://www.brucker.ch/bibliography/abstract/brucker.ea-formal-fw-testing-2014

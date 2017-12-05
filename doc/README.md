Kori Core
=============

Setup
---------------------
Kori Core is the original Kori client and it builds the backbone of the network. It downloads and, by default, stores the entire history of Kori transactions (which is currently more than 100 GBs); depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more.

To download Kori Core, visit [koricore.org](https://koricore.org/en/releases/).

Running
---------------------
The following are some helpful notes on how to run Kori on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/kori-qt` (GUI) or
- `bin/korid` (headless)

### Windows

Unpack the files into a directory, and then run kori-qt.exe.

### OS X

Drag Kori-Core to your applications folder, and then run Kori-Core.

### Need Help?

* See the documentation at the [Kori Wiki](https://en.kori.it/wiki/Main_Page)
for help and more information.
* Ask for help on [#kori](http://webchat.freenode.net?channels=kori) on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net?channels=kori).
* Ask for help on the [KoriTalk](https://koritalk.org/) forums, in the [Technical Support board](https://koritalk.org/index.php?board=4.0).

Building
---------------------
The following are developer notes on how to build Kori on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [Dependencies](dependencies.md)
- [OS X Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [Gitian Building Guide](gitian-building.md)

Development
---------------------
The Kori repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- [Source Code Documentation (External Link)](https://dev.visucore.com/kori/doxygen/)
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [Travis CI](travis-ci.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on the [KoriTalk](https://koritalk.org/) forums, in the [Development & Technical Discussion board](https://koritalk.org/index.php?board=6.0).
* Discuss project-specific development on #kori-core-dev on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net/?channels=kori-core-dev).
* Discuss general Kori development on #kori-dev on Freenode. If you don't have an IRC client use [webchat here](http://webchat.freenode.net/?channels=kori-dev).

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
This product includes software developed by the OpenSSL Project for use in the [OpenSSL Toolkit](https://www.openssl.org/). This product includes
cryptographic software written by Eric Young ([eay@cryptsoft.com](mailto:eay@cryptsoft.com)), and UPnP software written by Thomas Bernard.

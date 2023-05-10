# Hypervisor switch

## Use case
I like using Docker for my local development environment, and it requires the hypervisor service.
I also like playing Lineage 2 on private servers. Since Lineage 2 uses anti-VM protection,
most of the time it requires turning the hypervisor service off to play the game.
This script's purpose is to make turning the hypervisor off and on a bit less tedious.

## Tested platforms
- [x] Windows 11 Home

## Usage
1. Run [switch.bat](switch.bat) as administrator (or it will request admin rights).
2. Choose if you wish to start or stop the hypervisor.
3. Restart your computer (you will be prompted to do that).

## License
[![WTFPL](http://www.wtfpl.net/wp-content/uploads/2012/12/wtfpl-badge-1.png)](http://www.wtfpl.net/)
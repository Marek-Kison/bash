# LINUX Comand line and Shell Scripting Bible

## Chapter 1: Starting with Linux Shells

- all started with Linus Torvards

### Software Program Management

- Linux uses an inint system that utilizes run levels.
- There is 5 levels in the Linux operating system
- Level 1 is for basic system procesess - maintain by adminstrator

### Hardware Management

- Linux system identifies hardware devices as special files - device files
- Charakter device files : can handle only data one charakter at a time (modems, terminals)
- Block files : for devices that can handle data in large blocks at a time (disk drivers)
- Network files types: used for devices that use packets to send and receive data. Linux creates special files - nodes,
for each device on the system.
- all comunications with device is performed through the device node

### Filesystem Management

- ext, ...,ext4 and so on.

## Chapter 3 : Basic bash Shell Commands

- see manual: `man` - system's manual pager

```bash
man [man option] [[section] page ...] ...
```

- first and last 10 lines of the file -> `head` and `tail` commands

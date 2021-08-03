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

1. see manual: `man` - system's manual pager

```bash
man [man option] [[section] page ...] ...
```

2. first and last 10 lines of the file -> `head` and `tail` commands

3. `read` command takes input from keyboard

4.

## MAKE Srcipt Exexutable

```bash
chmod +x test.sh # Make Exexutable
./test.sh # run test bash file
```

## Special Variables

- `$0` - the filename of current script
- `$n` - n (positive decimal number) is corresponding to position of an argument (#1 : first argument)
- `$#` - number of arguments supplied to a script
- `$*` - all the arguments are double quouted
- `$@` - all the arguments are indivdualy double quouted
- `$?` - exit status of the last command executed
- `$$` - procesess number of the last background command

## Arrays

```bash
array_name=(value1 ... valuen) # array inititialization
${array_name[index]} # array accessing
```

## Operators

- how to use arithmetic operators in bash shell

```bash
value=`expr 2 + 2` # Addition
```

- subtraction (-) , multiplication(\*), division(/) , modulus(%), assigment (=), equality (==) are the same just
  **subtitude operator** ( with Equaluty & Not Equality also need to chanege parantheses )

|      OPERATOR       | DESCRIPTION                                                           |                 EXAMPLE                 |
| :-----------------: | :-------------------------------------------------------------------- | :-------------------------------------: |
|    + (Addition)     | Adds values on either side of the operator                            |       `expr $a + $b` will give 30       |
|   - (Subtraction    | Subtracts right hand operand from left hand operand                   |      `expr $a - $b` will give -10       |
| \* (Multiplication) | Multiplies values on either side of the operator                      |      `expr $a \* $b` will give 200      |
|    / (Division)     | Divides left hand operand by right hand operand                       |       `expr $b / $a` will give 2        |
|     % (Modulus)     | Divides left hand operand by right hand operand and returns remainder |       `expr $b % $a` will give 0        |
|   = (Assignment)    | Assigns right operand in left operand                                 | `a = $b` would assign value of b into a |
|    == (Equality)    | Compares two numbers, if both are same then returns true.             |    `[$a == $b]` would return false.     |
|  != (Not Equality)  | Compares two numbers, if both are different then returns true.        |     `[$a != $b]` would return true.     |

## Relation Operators

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

- bash scripts support also realation operators which are specific to numeric values.

| OPERATOR |                                                             DESCRIPTION                                                              |           EXAMPLE            |
| :------: | :----------------------------------------------------------------------------------------------------------------------------------: | :--------------------------: |
|  `-eq`   |                    Checks if the value of two operands are equal or not; if yes, then the condition becomes true.                    |  `[$a -eq $b]` is not true.  |
|  `-ne`   |           Checks if the value of two operands are equal or not; if values are not equal, then the condition becomes true.            |    `[$a -ne $b]` is true.    |
|  `-gt`   |       Checks if the value of left operand is greater than the value of right operand; if yes, then the condition becomes true.       | `[ $a -gt $b ]` is not true. |
|  `-lt`   |        Checks if the value of left operand is less than the value of right operand; if yes, then the condition becomes true.         |   `[ $a -lt $b ]` is true.   |
|  `-ge `  | Checks if the value of left operand is greater than or equal to the value of right operand; if yes, then the condition becomes true. | `[ $a -ge $b ]` is not true. |
|  `-le`   |  Checks if the value of left operand is less than or equal to the value of right operand; if yes, then the condition becomes true.   |   `[ $a -le $b ]` is true.   |

## Boolean Operators

| OPERATOR |                                             DESCRIPTION                                              |                 EXAMPLE                 |
| :------: | :--------------------------------------------------------------------------------------------------: | :-------------------------------------: |
|   `!`    |          This is logical negation. This inverts a true condition into false and vice versa.          |         `[ ! false ]` is true.          |
|   `-o`   |         This is logical OR. If one of the operands is true, then the condition becomes true.         | `[ $a -lt 20 -o $b -gt 100 ]` is true.  |
|   `-a`   | This is logical AND. If both the operands are true, then the condition becomes true otherwise false. | `[ $a -lt 20 -a $b -gt 100 ]` is false. |

## File Test Operators

- we can test various properties associated with Unix file

| OPERATOR |                                                         DESCRIPTION                                                         |          EXAMPLE          |
| :------: | :-------------------------------------------------------------------------------------------------------------------------: | :-----------------------: |
|   `-b`   |                    file Checks if file is a block special file; if yes, then the condition becomes true.                    |  [ -b $file ] is false.   |
|   `-c`   |                  file Checks if file is a character special file; if yes, then the condition becomes true.                  |  [ -c $file ] is false.   |
|   `-d`   |                        file Checks if file is a directory; if yes, then the condition becomes true.                         | [ -d $file ] is not true. |
|   `-f`   | file Checks if file is an ordinary file as opposed to a directory or special file; if yes, then the condition becomes true. |   [ -f $file ] is true.   |
|   `-g`   |              file Checks if file has its set group ID (SGID) bit set; if yes, then the condition becomes true.              |  [ -g $file ] is false.   |
|   `-k`   |                    file Checks if file has its sticky bit set; if yes, then the condition becomes true.                     |  [ -k $file ] is false.   |
|   `-p`   |                        file Checks if file is a named pipe; if yes, then the condition becomes true.                        |  [ -p $file ] is false.   |
|   `-t`   |       file Checks if file descriptor is open and associated with a terminal; if yes, then the condition becomes true.       |  [ -t $file ] is false.   |
|   `-u`   |              file Checks if file has its Set User ID (SUID) bit set; if yes, then the condition becomes true.               |  [ -u $file ] is false.   |
|   `-r`   |                          file Checks if file is readable; if yes, then the condition becomes true.                          |   [ -r $file ] is true.   |
|   `-w`   |                          file Checks if file is writable; if yes, then the condition becomes true.                          |   [ -w $file ] is true.   |
|   `-x`   |                         file Checks if file is executable; if yes, then the condition becomes true.                         |   [ -x $file ] is true.   |
|   `-s`   |                      file Checks if file has size greater than 0; if yes, then condition becomes true.                      |   [ -s $file ] is true.   |
|   `-e`   |                         file Checks if file exists; is true even if file is a directory but exists.                         |   [ -e $file ] is true.   |

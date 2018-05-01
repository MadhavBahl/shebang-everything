# Shell Scripting

A shell script is a computer program designed to be run by the Unix shell, a command-line interpreter.
Use this guide to get a great hold on shell scripting!

## Index Of Contents

1. [Introduction to scripts](#scripts)
2. [Our first script](#our-first-script)
3. [Variables](#variables)
   1. [Syntax](#syntax-for-variables)
   2. [Examples](#examples-of-variables)
   3. [Valid Variable Names](#variable-names)
4. [Tests](#tests)
   1. [Syntax](#syntax-for-tests)
   2. [File Operations](#file-test-operations)
   3. [String Operations](#string-test-operations)
   4. [Arithmetic Operations](#arithmetic-operators)
5. [Making Decisions Based On Conditions (The IF Statement)](#making-decisions)
6. [Iteration (The FOR Loop)](#for-loop)

## Scripts

You might have came across the word 'script' a lot of times, but what is the meaninig of a script?  <br />
So basically, a script is a command line program that contains a series of commands to be executed. These commands are execued by an interpreter. <br />
Anything you can put into a command line, you can put in a script. And, scripts are great for automating tasks.
If you find yourself repeating some commands frequently, you can, rather you should, create a script for doing it!

![image](https://user-images.githubusercontent.com/26179770/39190779-f24c3094-47f2-11e8-8665-c8dd6e369a2d.png)

## Our first script

```sh
#!/bin/bash
echo "My First Script!"
```

To run it:

```
$ chmod 755 script.sh
$ ./script.sh
```

[Find the code here](./first.sh)

## Shebang

A script starts with #! __Path To Bash__

`#` is often called sharp and `!` is called Bang, hence the name sharp bang, but generally people say it **shebang** instead of sharp bang.

**Basic Examples Of Shell Scripts**

- Using csh as interpreter

```sh
#!/bin/csh
echo "This script uses csh as the interpreter!"
```

- Using ksh as interpreter

```sh
#!/bin/ksh
echo "This script uses ksh as the interpreter!"
```

- Using zsh as interpreter

```sh
#!/bin/zsh
echo "This script uses zsh as the interpreter!"
```

### Use it or not?

If a script does not contain the shebang, the commands are executed using your shell, so there are chances that the code might run properly, but still, that isn't the correct way of doing it! <br/>
Different shells have slightly varying syntax.
<br />

**More than just shell scripts!**  <br>

You dont have to use shell as the interpreter for your scripts. For example, you can run a python script too by supplying the path in shebang.

```sh
#!/usr/bin/python
print "This is a python script!"
```

To run it:

```
$ chmod 755 name.py
$ ./name.py
```

[Find the code here](./python.py)

## Variables

Variables are basically storage location that have a name and can store some data which can be changed in future.

### Syntax For Variables

```sh
VARIABLE_NAME = "Value"
```

### Important

- Variables are case sensitive

- By convention, variables are uppercase

- To use a variable, just write the variable name followed by the `$` sign

### Examples Of Variables

- Example 1

```sh
#!/bin/bash
MY_NAME="Madhav Bahl"
echo "Hello, I am $MY_NAME"
```

[Download the code](./name.sh)

- Example 2

```sh
#!/bin/bash
MY_NAME="Madhav Bahl"
echo "Hello, I am ${MY_NAME}"
```

[Download the code](./name2.sh)

- Example 3: Assign command output to a variable

```sh
#!/bin/bash
CONTENTS=$(ls)
echo "The contents of this directory are: "
echo "$CONTENTS"
```

An alternative:

```sh
#!/bin/bash
CONTENTS=`ls`
echo "The contents of this directory are: "
echo "$CONTENTS"
```

[Download the code](./comd2.sh)

- Example 4

```sh
#!/bin/bash
SERVER_NAME=$(hostname)
echo "This script is being run on ${SERVER_NAME}"
```

[Download the code](./comd.sh)

### Variable Names

Alphanumeric characters, starting with an alphabet or underscore and can contain digits or underscores in between.

#### Valid Variable Names

- THIS3VARIABLE="ABC"

- THIS_IS_VARIABLE="ABC"

- thisIsVariable="ABC"

#### Invalid Variable Names

- 4Number="NUM"

- This-Is-Var="VAR"

No special character apart from underscore is allowed!

## Tests

Scripts are basically needed to remove the need of again and again typing the commands which you use frequently or basically automating tasks. But, what if the script you wrote needs to execute differently under different circumstances? You can make the decisions using tests.

### Syntax for tests

```sh
[ condition-to-test-for ]
```

#### [Example](./test1.sh)

```sh
[ -e /etc/passwd ]
```

This test checks whether /etc/passwd exists, if it does, it returns true (or, it exits with a status of 0). If the file doesnt exists, it returns false (status 1).

### File Test Operations

```sh
  -d FILE_NAM  # True if FILE_NAM is a directory
  -e FILE_NAM  # True if FILE_NAM exists
  -f FILE_NAM  # True if FILE_NAM exists and is a regular file
  -r FILE_NAM  # True if FILE_NAM is readable
  -s FILE_NAM  # True if FILE_NAM exists and is not empty
  -w FILE_NAM  # True if FILE_NAM has write permission
  -x FILE_NAM  # True if FILE_NAM is executable
```

### String Test Operations

```sh
  -z STRING  # True if STRING is empty
  -n STRING  # True if STRING is not empty
  STRING1 = STRIN2 # True if strings are equal
  STRING1 != STRIN2 # True if strings are not equal
```

### Arithmetic Operators

```sh
  var1 -eq var2  # True if var1 is equal to var2
  var1 -ne var2  # True if var1 not equal to var2
  var1 -lt var2  # True if var1 is less than var2
  var1 -le var2  # True if var1 is less than or equal to var2
  var1 -gt var2  # True if var1 is greater than var2
  var1 -ge var2  # True if var1 is greater than or equal to var2
```

## Making Decisions

Just like any script, shell scripts can make decisions based on conditions.

### The IF Statement

Syntax:

```sh
if [ condition-is-true ]
then
  command 1
  command 2
    ...
    ...
  command N
fi
```

[Example:](./ifStat.sh)

```sh
#!/bin/bash
SHELL_NAME="bash"

if [ "$SHELL_NAME" = "bash" ]
then
  echo "You are using bash shell"
fi
```

### IF-ELSE Tree

Syntax:

```sh
if [ condition-is-true ]
then
  command 1
  command 2
    ...
    ...
  command N
else
  command N+1
  command N+2
    ...
    ...
  command M
fi
```

[Example:](./ifElse.sh)

```sh
#!/bin/bash
SHELL_NAME="bash"

if [ "$SHELL_NAME" = "bash" ]
then
  echo "You are using bash shell"
else
  echo "You are not using the bash shell"
fi
```

### IF-ELIF Ladder

Syntax:

```sh
if [ condition-is-true ]
then
  command 1
elif [ condition-is-true ]
then
  command 2
elif [ condition-is-true ]
then
  command 3
else
  command 4
fi
```

[Example:](./ifElif.sh)

```sh
#!/bin/bash
SHELL_NAME="bash"

if [ "$SHELL_NAME" = "bash" ]
then
  echo "You are using bash shell"
elif [ "$SHELL_NAME" = "csh" ]
then
  echo "You are using csh shell"
else
  echo "You are not using the bash or csh shell"
fi
```

## For Loop

Loops can execute a block of code a number of times and are basically used for performing iterations.
Just like any other programming language, shell scripts also have for loops.

### Syntax

```sh
for VARIABLE_NAME in ITEM_1 ITEM_N
do
  command 1
  command 2
    ...
    ...
  command N
done
```

### [Example](./loops/color.sh)

```sh
#!/bin/bash
for COLOR in red green blue
do
  echo "The Color is: ${COLOR}"
done
```

[Alternatively,](./loops/color2.sh)

```sh
#!/bin/bash
COLORS="red green blue"
for COLOR in $COLORS
do
  echo "The Color is: ${COLOR}"
done
```

### [Example 2](./loops/picture.sh)

In this simple example we will see how to rename each file with .txt format

```sh
#!/bin/bash
FILES=$(ls *txt)
NEW="new"
for FILE in $FILES
do
  echo "Renaming $FILE to new-$FILE"
  mv $FILE $NEW-$FILE
done
```

## Exit Status

Every command returns an exit status, also called the return code which ranges from 0 to 255. 
Exit status are used for error checking. 

- 0 means success

- Any code other than 0 means an error condition.

To find out what an exit status for a command means, one can look for the documentations or manual using `man` or `info` command.

`$?` contains the return code of previously executed command.

<br>
Example:

```sh
#!/bin/bash
ls /randomDirectory   # Any Directory which does not exist
echo "$?"    # This command will return 2
```

Another Example:

```sh
#!/bin/bash
HOST="google.com"
ping -c 1 $HOST     # -c is used for count, it will send the request, number of times mentioned
RETURN_CODE=$?
if [ "$RETURN_CODE" -eq "0" ]
then
  echo "$HOST reachable"
else
  echo "$HOST unreachable"
fi
```

## Logic Operations
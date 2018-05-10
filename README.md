# Shell Scripting

A shell script is a computer program designed to be run by the Unix shell, a command-line interpreter.
Use this guide to get a great hold on shell scripting!

<meta name="description" content="You might have came across the word 'script' a lot of times, but what is the meaninig of a script? 
How can you write scripts? What is shell scripting? 
What all can we do using shell? 
Find all your answers on this tutorial website (Your unofficial guidebook too shell programming)" />

<link rel="shortcut icon" href="img/bash.png">

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
7. [Positional Parameters](#positional-parameters)
8. [Exit Statuses](#exit-status)
   1. [Logical Operations](#logic-operations)
   2. [The Semicolon](#the-semicolon)
   3. [The Exit Command](#the-exit-command)

10. [Sample Programs For Revision](#some-sample-programs)

## Scripts

You might have came across the word 'script' a lot of times, but what is the meaning of a script?  <br />
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

[Find the code here](./first/first.sh)

## Shebang

A script starts with #! __Path To Bash__

`#` is often called sharp and `!` is called Bang, hence the name sharp bang, but generally people say it **shebang** instead of sharp bang.

### Comments

Comments are started by a `#` sign, anything after pound sign on that line is ignored.

#### Example
```sh
#!/bin/bash
echo "Hello World!"
# This line won be executed!
```

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

[Find the code here](./first/python.py)

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

[Download the code](./variable/name.sh)

- Example 2

```sh
#!/bin/bash
MY_NAME="Madhav Bahl"
echo "Hello, I am ${MY_NAME}"
```

[Download the code](./variable/name2.sh)

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

[Download the code](./variable/comd2.sh)

- Example 4

```sh
#!/bin/bash
SERVER_NAME=$(hostname)
echo "This script is being run on ${SERVER_NAME}"
```

[Download the code](./variable/comd.sh)

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

#### [Example](./variable/test1.sh)

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

[Example:](./ifElse/ifStat.sh)

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

[Example:](./ifElse/ifElse.sh)

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

[Example:](./ifElse/ifElif.sh)

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

```sh
for (( VAR=1;VAR<N;VAR++ ))
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

## Positional Parameters

Some arguements or parameters can be passed when we call the script. 

For Example:

`$script.sh param1 param2 param3 param4`

All the parameters will be stored in:

```sh
  $0 -- "script.sh"
  $1 -- "param1"
  $2 -- "param2"
  $3 -- "param3"
  $4 -- "param4"
```

### [Example](./pos-param/pos2.sh)

```sh
#!/bin/bash
echo "Running script: $0"
echo "Parameter 1: $1"
echo "Parameter 2: $2"
echo "Parameter 3: $3"
echo "Parameter 4: $4"
```

**To access all the parameters, use `$@` sign**

### [Example](./pos-param/pos2.sh)

```sh
#!/bin/bash
echo "Running script: $0"
for PARAM in $@
do
  echo "Parameter: $PARAM"
done
```

## User Input-STDIN

`read` command accepts STDIN (Standard Input)

### Syntax

```sh
read -p "PROMPT MESSAGE" VARIABLE
```

### [Example](./stdin/stdin.sh)

```sh
#!/bin/bash
read -p "Please Enter You Name: " NAME
echo "Your Name Is: $NAME"
```

## Exit Status

Every command returns an exit status, also called the return code which ranges from 0 to 255. 
Exit status are used for error checking. 

- 0 means success

- Any code other than 0 means an error condition.

To find out what an exit status for a command means, one can look for the documentations or manual using `man` or `info` command.

`$?` contains the return code of previously executed command.

<br>
[Example:](./exit-status/error.sh)

```sh
#!/bin/bash
ls /randomDirectory   # Any Directory which does not exist
echo "$?"    # This command will return 2
```

[Another Example:](./exit-status/ping.sh)

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

### Logic Operations
Shell scripts supports **logical AND** and **logical OR**.

### AND

The AND Operator results true if all the conditions are satisfied.

`&& = AND`

[Example](./exit-status/and.sh)

```sh
#!/bin/bash
MY_VAR=10
if [ "$MY_VAR" -ge 5 ] && [ "$MY_VAR" -le 15 ]
then
  echo "Given variable is within the range"
fi
```

**Note** While using AND, the second command will run only if the first command returns a 0 exit status.

Exampe:

```bash
mkdir tempDir && cd tempDir && mkdir subTempDir
```

In this example, tempDir is created with `mkdir` command. If it succeeds, then `cd tempDir` is executed.

### OR

The OR Operator results true if any one the conditions are satisfied.

`|| = OR`

[Example](./exit-status/or.sh)

```sh
#!/bin/bash
MY_VAR=10
if [ "$MY_VAR" -ge 15 ] || [ "$MY_VAR" -le 11 ]
then
  echo "Given variable is either greater than 15 or less than 11"
fi
```

**Note** Just like in AND operation, here also, the first condition will be execued first. If it returns the status code 0, then next condition will not be checked.

### The Semicolon

Separate commands on the same line with a semicolon in between to make sure that they all get executed.
The command following the semicolon will always get executed no matter the previous command failed or succeeded.

Example:

```sh
mkdir dir1 ; cd dir1
```

The above code is equivalent to

```sh
mkdir dir1
cd dir1
```

### The Exit Command

Exit command is used to expicitly define the return code.
If we do not define the exit status of the shell script explicitly, then by default the exit status of the last command executed is taken as the exit status of the script.
We can use exit command anywherer in the script, and as soon as exit command is encountered, the shell script will stop executing.

```sh
  exit 0
  exit 1
  exit 2
    ...
    ...
  exit 255
```

[Example:](./exit-status/exitCode.sh)

```sh
#!/bin/bash
DIR_NAME="/home/madhav/Desktop/Play"
if [ -e $DIR_NAME ]
then
  echo "Given Directory Already Exists"
  echo "Moving into ${DIR_NAME}"
  cd $DIR_NAME
  exit 0
fi
echo "Given Directory Does Not Exists"
mkdir $DIR_NAME
cd $DIR_NAME
exit 1
```

Therefore, using exit code, we can can define custom meanings to exit statuses.

## Functions

A set of instructions which can be reused/called any time from the main program whenever the need for those instructions arrives. Consider a situation that you have a particular module that does a particular job, now let's suppose that job has to be done 20 (say) times in the main program (for example calculating maximum number in an array of numbers). Now, if you write the code for that 20 times, your code would become very large, however, if we write a function for that, and call that function whenever it is required, the code would remain short, easy to read and much more modularised. 

Moreover, it is a great coding practise to keep your code DRY. 
DRY stands for Don't Repeat Yourself, i.e., write the code in such a way that you dont have to be copy and pasting same piece of code around everywhere!

Therefore, functions are great because they make the code DRY, we can write once and use that many times, using functions reduces overall length/size of script. Moreover, functions make program easier to maintain, because they make the code divided into modules making particular place to edit and troubleshoot available in case of bugs/errors.

Whenever you find yourself repeating a set of instructions, make a function for that. (A functin must be defined before use).

**Note:** It is a good practise to define all your functions at the top before starting the main pragram or main instructions.

### Syntax

```sh
function function_name() {
    command 1
    command 2
    command 3
      ...
      ...
    command N
}
```

Or, 

```sh
function_name() {
    command 1
    command 2
    command 3
      ...
      ...
    command N
}
```

#### [To call a function](./functions/call.sh)

To call a function, simply write it's name on a line in the script.

```sh
#!/bin/bash
function myFunc () {
    echo "Shell Scripting Is Fun!"
}
myFunc
```

**Note:** While calling functions, do not use paranthesis like we use in other programming languages.

### Calling a function from another function

To call a function from another function, simply write the function name of the function you want to call.

[Example:](./functions/greet.sh)

```sh
#!/bin/bash
function greetings() {
  USER=$(whoami)
  echo "Welcome ${USER}"
  currentTime
}
function currentTime() {
  echo "Current Time Is: $(date +%r)"
}
greetings
```

### Positional Parameters In Functions

Just like a shell script, functions can also accept parameters.

The first parameter is stored in $1
The second paramaeter is stored in $2 and so on.
$@ contains all the parameters.

**Note:** $0 is still the name of script itself, not the name of function.

To provide parameters, just write them after the function name with a white space in between.

[Example](./functions/greet2.sh)

```sh
#!/bin/bash
function greetings() {
  for PERSON_NAME in $@
  do
    echo "Hello ${PERSON_NAME}"
  done
}
greetings World! Random Guy Stranger
```

## Some Sample Programs

Any field whether it may be computer science or any other, requires practise.
Please consider this as a practise assignment, and try to do all the questions yourself and then see the code.

[Click here to see the practise programs #1](./practise1/)
[Click here to see the practise programs #2](./practise2/)
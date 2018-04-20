# Shell Scripting

A shell script is a computer program designed to be run by the Unix shell, a command-line interpreter.
Use this guide to get a great hold on shell scripting!

## Index Of Contents

1. [Introduction to scripts](#scripts)
2. [Our first script](#our-first-script)
3. [Variables](#variables)

## Scripts

You might have came across the word 'script' a lot of times, but what is the meaninig of a script?  <br />
So basically, a script is a command line program that contains a series of commands to be executed. These commands are execued by an interpreter. <br />
Anything you can put into a command line, you can put in a script. And, scripts are great for automating tasks.
If you find yourself repeating some commands frequently, you can, rather you should, create a script for doing it!

![image](https://user-images.githubusercontent.com/26179770/39010322-e6a6c97c-442b-11e8-909f-64ff9723c739.png)

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

### Syntax

```sh
VARIABLE_NAME = "Value"
```

### Important

- Variables are case sensitive

- By convention, variables are uppercase

- To use a variable, just write the variable name followed by the `$` sign

### Example

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

-Exampe 4

```sh
#!/bin/bash
SERVER_NAME=$(hostname)
echo "This script is being run on ${SERVER_NAME}"
```

[Download the code](./comd.sh)
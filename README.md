# timedailytask
<img src="https://github.com/prachis70/timedailytask/assets/149580593/272d41e9-9be1-49a4-9f96-25af83e9f264" height=22% width=35%>
<img src="https://github.com/prachis70/timedailytask/assets/149580593/40d399a8-2db2-4aed-9e79-a52fe537bd39" height=22% width=35%>
<video src="https://github.com/prachis70/timedailytask/assets/149580593/8ae6095d-7c1b-4b9a-ab10-65c818ad8861" height=22% width=35%>


# 1)What is  Asynchronous Programming? 

Asynchronous programming is a programming paradigm that allows tasks or operations to run independently and concurrently, without waiting for each other to complete before moving on to the next task. In traditional synchronous programming, tasks are executed one after another, and the program waits for each task to finish before proceeding to the next one.

# 2) What is Future Class ?

A future (lower case "f") is an instance of the Future (capitalized "F") class. A future represents the result of an asynchronous operation, and can have two states: uncompleted or completed. info Note. Uncompleted is a Dart term referring to the state of a future before it has produced a value.


# 3) What is Duration class & Future.delayed() constructor with Example ?

Duration class:  
The Duration class represents an interval of time in seconds or nanoseconds

future.delay:   
enables you to create a future that runs its computation after a prespecified duration.


## Example:

```bash
import'Dart:io';
void main()
{
    Future.delayed(Duration
    (seconds:2),()
    { 
      print("hello flutter");
    }
    ); print("hello php");
}

```

# 4) What is the Use of the async & await keyword?
async:
You can use the async keyword before a function's body to mark it as asynchronous

await:
allows you to delay the execution of an async function until the awaited Future has finished.

# 5) What is Recursion ? With Example?
Dart Recursion is the method where a function calls itself as its subroutine. 
 ## Example:

```bash

void main()
{var count=15;
Timer.periodic(Duration(seconds: 1), (timer) {
  print(timer.tick);
  count--;
  if(count==0)
  {
    print("Thanks for End");
    timer.cancel();
  }
 }
);
}
```
# 6) What is Timer class with example ?
A countdown timer that can be configured to fire once or repeatedly.

##  Example:

```bash
void main()
{
  
  Timer(

    Duration(seconds: 1),
    () {

    print("hello javaaa");
    },
    );
}

```
# 7)What is Timer.periodic and use with Example?

allows us to schedule future actions and provides us with the control mechanisms to start, cancel, and reset these timers.
## Example
```bash
import 'dart:async';
import 'dart:io';
void main()
{
  print("Hyeeee.....");
  Timer.periodic(Duration(seconds: 1), (timer) {print("hello....");});
}
```

# timedailytask
<img src="https://github.com/prachis70/timedailytask/assets/149580593/272d41e9-9be1-49a4-9f96-25af83e9f264" height=22% width=35%>
# What is  Asynchronous Programming?

Asynchronous programming is a programming paradigm that allows tasks or operations to run independently and concurrently, without waiting for each other to complete before moving on to the next task. In traditional synchronous programming, tasks are executed one after another, and the program waits for each task to finish before proceeding to the next one.

# What is Future Class ?

A future (lower case "f") is an instance of the Future (capitalized "F") class. A future represents the result of an asynchronous operation, and can have two states: uncompleted or completed. info Note. Uncompleted is a Dart term referring to the state of a future before it has produced a value.

# What is Duration class & Future.delayed() constructor with Example ?

Duration class:  
The Duration class represents an interval of time in seconds or nanoseconds

future class:   
enables you to create a future that runs its computation after a prespecified duration.

void main()
{
  
    Future.delayed(Duration
    (seconds:2),()
    { 
      print("hello flutter");
    }
    ); print("hello php");
}

# What is the Use of the async & await keyword?
async:
You can use the async keyword before a function's body to mark it as asynchronous

await:
allows you to delay the execution of an async function until the awaited Future has finished.

# M-KOPA Senior Backend Software Engineer – Take Home Exercise

The Solution is a Simple SMS Processor microservice which is a wrapper around the API for a 3rd
party SMS service. The SMS Processor Microservice consumes Send SMS command containing customer phone and smsText as payload from a queue 

and sends Http Request with a json payload to the 3rd Party SMS Service 

The SMS Processor Microservice publishes “SmsSent” event to a global event bus for successfully sent sms to the 3rd party SMS Service

## Project Solution structure/Overview

The solution and project structure runs in visual studio using a NTier strucuture


SMSService.Common -- Is a class library that handles crosss concerns and abstractions 

SMSService.SMSProcessor -- Contains the implementation for a Background .NET Core Worker Service 
to handle receiving SendSMS command for the MessageQueue assuming RabbitMQ as the underlying MessageBroker

SMSService.Implementation -- The project defines the concrete implementation for the abstractions defined in SMSService.Common Library

SMSService.Test -- This project contains Unit test implementation including fakes and mock to test functionality of the abstractions specified.



###Requirements

This was created and tested on an Ubuntu 14.04 Linux system using Ruby 2.3.0.  It should likely run on an OSx box without any trouble.


###Installation instructions / Run Instructions

I used the RVM package manager and you'll notice the .ruby-gemset and .ruby-version files in this code repository.

Step 1: *bundle install* to your RVM gemset (or whatever setup is most convenient for you)

Step 2: Run *ruby hp_calculator.rb* and start inputting your data

Step 2a: Press *q* or *CTRL+D* to stop the program

Step 3 (optional): Run *rspec spec* in the main directory to run the tests


## Implementation Approaches and Tradeoffs

 
The last step is to talk about approaches and tradeoffs. This lets your reader know how you thought about the problem and what your solution offers. In fact, I might argue that this is just as important as an actual working solution.

This is because it lets the hiring manager know that you’re able to think about issues in a holistic way and that you’re a good problem solver. The real-world is all about tradeoffs.


### How your Infrastructure looks like.

![](interview-infra.png "Your Infra")

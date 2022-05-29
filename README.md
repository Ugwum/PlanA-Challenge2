# M-KOPA Senior Backend Software Engineer – Take Home Exercise

The Solution is a Simple SMS Processor microservice which is a wrapper around the API for a 3rd
party SMS service. The SMS Processor Microservice consumes Send SMS command containing customer phone and smsText as payload from a queue 

and sends Http Request with a json payload to the 3rd Party SMS Service 

The SMS Processor Microservice publishes “SmsSent” event to a global event bus for successfully sent sms to the 3rd party SMS Service

## Project Solution structure/Overview

The solution and project structure runs in visual studio using a which different class library projects to 

SMSMicroService.Abstractions -- Is a class library that handles crossscutting concerns and abstractions and interfaces to build the concrete implementations for the sms microservice 

SMSCommandProcessor -- Contains the implementation for a Background .NET Core Worker Service to handle receiving SendSMS command for the MessageQueue assuming RabbitMQ as the underlying MessageBroker


SMSService.Test -- This project contains Unit test implementation including fakes and mock to test functionality of the abstractions specified. Please note there is a r

 
## Requirements

1. For the purpose of the Unit test and Background .NET Core worker service implementation we assummed RabbitMQ as a Message Broker for our MessageQueue which helps to enqueue published send sms command and dequeue to consumers for processing 
  
  For more instruction to setup rabbit MQ on window please follow the link https://www.rabbitmq.com/install-windows.html.
  
2. Visual Studio 2017 or above with .NET Core 

3. .NET Core 3.1 SDK install 
  


## Run Instructions

### Using Command Prompt 
		 ####Unit Test
		    1. Unzip the solution.
			
			2. Open command prompt on the root folder of the solution.
			
			3. Run the command "dotnet test"  to run all test nugget packages and run the unit tests of the solution

		#### SMSCommandProcessor

			1. Unzip the solution.
			
			2. Open command prompt on the root folder of the solution.
			
			3. Run the command "dotnet run -- project SMSCommadnProcessor.csproj"  to run asp.net core background worker service t process SendSMSCommand
	
### Using Visual Studio

    1. Unzip the solution to any location of choice on your pc.
	
	2. Open solution project on Visual Studio
	
	3. Build and Run the projects
	

## Implementation Approaches and Tradeoffs

 1. Please note for the Unit test Setup I used FakeItEasy library for mock and fake my interface for ThirdPartySMSClient and SMSEventStore
 
 2. For the Message Queue based on the system diagram I used RabbitMQ as Message Queue broker which provided a message queuing framework  enqueuing and delivery of published SendSMS Command to the background worker service SMSCommandProcessor. The Background Worker Service - SMSCommandProcessor  implements the logic for sending the SMS to the thirdparty sms Service and publishing an
“SmsSent” event to a global event bus. 

 Using the Abstraction provided in the Interface ISendSMSCommandProcessor,  other MessageQueue implementation can be provided for example using Amazon Simple Queue Service (SQS),  Azure Service Bus, 


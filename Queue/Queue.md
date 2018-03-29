In the common language used by developers, a queue is a data structure used to store data which follows First in-First out rule. A data item can be inserted from back of the queue while it is retrieved from front. Azure queues are a very similar concept that is used to store the messages in a queue. A sender sends the message and a client receives and processes them. A message has few attributes attached to it, for example expiry time.

A client usually processes and deletes the message. Windows Azure service lets the message to be stored for 7 days and later it gets deleted automatically, if it is not deleted by the client. There can be one sender and one client or one sender and many clients or many sender and many clients.

There are two services offered by Windows Azure for message queues. This chapter covers Windows Azure queue. The other service is called ‘Service Bus queue’.

Decoupling the components is one of the advantages of message queue services. It runs in an asynchronous environment where messages can be sent among the different components of an application. Thus, it provides an efficient solution for managing workflows and tasks. For example, a message to complete a task is sent from the frontend of the application and is received by a backend worker, who then completes the task and deletes the message.

---
title: "Get started with cloud communications"
description: "Learn how you can utilize bots to respond to your customers' needs and facilitate collaboration."
author: "ananmishr"
localization_priority: Normal
ms.prod: "cloud-communications"
---

# Get started with cloud communications

Learn how you can utilize bots to respond to your customers' needs and facilitate collaboration.

## Prerequisites
Understand how the [Azure Active Directory](https://docs.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-whatis)
(AAD) service helps your employees sign in and access resources. <br/>
Familiarize yourself with the [Azure Bot Service](https://docs.microsoft.com/en-us/azure/bot-service/bot-service-overview-introduction?view=azure-bot-service-3.0) and its capabilities.

## Register a bot

The terms "service application" and "bot" can be used interchangeably. You can either create a bot through the [Azure Portal](https://azure.microsoft.com/en-us/features/azure-portal/) directly or register a bot that isn't hosted on Azure. 
More details describing the bot registration process can be found [here](https://microsoftgraph.github.io/microsoft-graph-comms-samples/docs/articles/calls/register-calling-bot.html). 

To make things easier later on, understand the different [types of permissions](https://docs.microsoft.com/en-us/azure/active-directory/develop/v1-permissions-and-consent#types-of-permissions) within AAD. Apps with delegated permissions require a signed-in user to be present. Application based permissions don't need a signed-on user, and can often run as a background service.


After you register your bot, if you'd like to [add your bot to Microsoft Teams](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/calls-and-meetings/registering-calling-bot), make sure you understand how to use [App Studio](https://docs.microsoft.com/en-us/microsoftteams/platform/get-started/get-started-app-studio) and define the required metadata.

## Manage the state of the bot

Once you register your bot, understand if you want your audio and video based media to be [application-hosted or service-hosted](cloud-communications-media). At a high level, decide if you want to access a live-stream of raw media or not.

After this, you can figure out if it's best for your bot to be [stateful or stateless](https://microsoftgraph.github.io/microsoft-graph-comms-samples/docs/articles/calls/StateManagement.html).

#### Stateless bots

Any virtual machine can handle any bot instance, which means that if one machine goes down, another can take care of it. This makes for a resilient solution.

On the other hand, a shared cache, such as REDIS, needs to be accessible to all of the virtual machines.

#### Stateful bots

A virtual machine can handle only one bot instance at a time. Since all of the states are on one machine, there aren't any extra memory checks or REDIS cache checks.

On the downside, since the bot instance is just on one machine, it isn't as resilient.


>**Note:** Service-hosted media bots can be stateful or stateless, while application-hosted media bots must be stateful in order to use the [Bot Media SDK](https://www.nuget.org/packages/Microsoft.Skype.Bots.Media).

## Use the SDKs

These SDKs are written in C#. We hope to have more support for other languages in the future.

If you're using **stateless** bots, install the [Graph Communications Core SDK](https://www.nuget.org/packages/Microsoft.Graph.Communications.Core).


If you're using **stateful** bots, refer to the [Graph Communications Calling SDK](https://www.nuget.org/packages/Microsoft.Graph.Communications.Calls).

#### Examples

Learn how to implement different scenarios using stateful bots, such as [answering an incoming call](https://microsoftgraph.github.io/microsoft-graph-comms-samples/docs/articles/index.html#example-incoming-calls) with either application-hosted or service-hosted media.

For more examples, refer to our [Github Samples Repository](https://microsoftgraph.github.io/microsoft-graph-comms-samples/docs/index.html).

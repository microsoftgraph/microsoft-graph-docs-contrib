---
title: "Get started with the cloud communications API"
description: "Use the cloud communications API in Microsoft Graph to build bots for your customers. Learn how to register your bot and then manage the state of your bot."
author: "ananmishr"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
---

# Register a bot with the cloud communications API

You can use the cloud communications API in Microsoft Graph to build bots to respond to your customers' needs and facilitate collaboration. This article describes how to register your bot and then manage the state of your bot.

## Prerequisites

Before you get started, familiarize yourself with the following topics:

- [Microsoft Entra ID](/azure/active-directory/fundamentals/active-directory-whatis)
(Microsoft Entra ID) and how the service helps employees sign in and access resources.
- The [Azure Bot Service](/azure/bot-service/bot-service-overview-introduction?view=azure-bot-service-3.0&preserve-view=true) and its capabilities.

## Register a bot

The terms "service application" and "bot" can be used interchangeably. You can either create a bot through the [Azure portal](https://azure.microsoft.com/features/azure-portal/) directly or register a bot that isn't hosted on Azure.
For more information, see [Registering a calling bot](https://microsoftgraph.github.io/microsoft-graph-comms-samples/docs/articles/calls/register-calling-bot.html). 

To make things easier later, it's helpful to understand the different [types of permissions](/azure/active-directory/develop/v1-permissions-and-consent#types-of-permissions) within Microsoft Entra ID. Apps with delegated permissions require a signed-in user. Application-based permissions don't need a signed-in user and can often run as a background service.

After you register your bot, if you'd like to [add your bot to Microsoft Teams](/microsoftteams/platform/concepts/calls-and-meetings/registering-calling-bot), make sure you understand how to use the [Developer portal for teams](/microsoftteams/platform/concepts/build-and-test/teams-developer-portal) and define the required metadata.

## Manage the state of the bot

After registering your bot, decide whether you want your audio and video-based media to be [application-hosted or service-hosted](cloud-communications-media.md). At a high level, this involves deciding whether or not you want to access a live-stream of raw media.

Next, you can decide whether your bot should be [stateful or stateless](https://microsoftgraph.github.io/microsoft-graph-comms-samples/docs/articles/calls/StateManagement.html).

### Stateless bots

Any virtual machine can handle any bot instance, which means that if one machine goes down, another can take care of it. This makes for a resilient solution.

On the other hand, a shared cache, such as REDIS, needs to be accessible to all the virtual machines.

### Stateful bots

A virtual machine can handle only one bot instance at a time. Because all the states are on one machine, there aren't any extra memory or REDIS cache checks.

The drawback is that it isn't as resilient because the bot instance is just on one computer.

> [!NOTE]
> Service-hosted media bots can be stateful or stateless. Application-hosted media bots must be stateful to use the [Bot Media SDK](https://www.nuget.org/packages/Microsoft.Skype.Bots.Media).

## Use the SDKs

The following SDKs are available in C#. We'll provide support for other languages in the future.

- If you're using **stateless** bots, install the [Graph Communications Core SDK](https://www.nuget.org/packages/Microsoft.Graph.Communications.Core).
- If you're using **stateful** bots, install the [Graph Communications Calling SDK](https://www.nuget.org/packages/Microsoft.Graph.Communications.Calls).

## Examples

Learn how to implement different scenarios using stateful bots, such as [answering an incoming call](https://microsoftgraph.github.io/microsoft-graph-comms-samples/docs/articles/index.html#example-incoming-calls) with either application-hosted or service-hosted media.

For more examples, see the [Communications samples repository](https://microsoftgraph.github.io/microsoft-graph-comms-samples/docs/index.html).

## Privacy and compliance

In the requests to our APIs, sensitive data shouldn't be sent in client-side generated IDs (such as scenario IDs, request IDs, or other correlation IDs) in headers or the request body. These IDs are logged on the server side for diagnostics.

## Related content

- [Teams API overview](teams-concept-overview.md)

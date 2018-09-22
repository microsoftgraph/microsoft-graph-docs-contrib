# Working with the calls and online meetings API in Microsoft Graph

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

You can use the calls and online meetings APIs to create calls and receive calls from users in Skype and Microsoft Teams. The calls and online meetings API supports the following scenarios:

- Ad-hoc two-party calling
- Ad-hoc multiparty calling
- Meet now
- Calling into private meetings
- Calling into Microsoft Teams meetings
- IVR scenarios

It's important to understand your media processing requirements before you use the calls and online meetings API.

## MediaPaaS

Media processing is managed through Microsoft Media Platform (MediaPaaS). MediaPaaS helps bots engage in Skype/Microsoft Teams audio/video calls and conferences. It enables real-time bots to participate in both 1:1 and group/multiparty calls​. You can make the following types of bot calls:

- Direct (**application media**) media bot calls - You can build real-time bots using the SmartAgents API and have access to direct media I/O​. Also known as the [Bots Media Library](https://docs.microsoft.com/en-us/bot-framework/dotnet/bot-builder-dotnet-real-time-media-concepts), this helps you build rich real-time media calling bots. You host the smart agents library and media processor.
- Remote media (**service media**) bot calls - You can manage the workflow but offload media hosting to MediaPaaS/IVR​.

## Using the calls and online meetings API

You can use the calls and online meetings API directly via the **service media** bot. In this case, the bot is usually _stateless_ and does not process media locally.

You can also use the [Microsoft Graph calls and online meetings SDK](https://graphcallingsdk-docs.azurewebsites.net/index.html) to simplify bot creation. The SDK provides functionality to manage the states of the resources in memory and to pull in you media stack. The media extension enables you to host the media locally and gain access to the low-level audio-video sockets.

## Bot service

You can register your bot in the [Bot Service](https://docs.microsoft.com/en-us/bot-framework/bot-service-quickstart) in the Azure portal and save the Microsoft app ID and password. You can also add the Skype channel and the required settings. To do that, in the settings select **Local Media - Real Time Media** for the media type. You can also provide a webhook that send incoming call notifications.

## See also

- [Application](./application.md) - Provides APIs for creating a call.
- [Call](./call.md) - Provides APIs for managing a call.

# Working with calls in Microsoft Graph

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

You can use the calling APIs in Microsoft Graph to create calls and receive calls from users in Skype and Microsoft Teams. The following types of of calling scenarios are supported by these APIs:

- Ad-hoc two-party calling
- Ad-hoc multiparty calling
- Meet mow
- Calling into private meetings
- Calling into Microsoft Teams meetings
- IVR scenarios

Before you start working with the calling API, it is important to understand your media processing requirements.

## MediaPaaS

Media processing is managed through Microsoft Media Platform (MediaPaaS). MediaPaaS helps bots engage in Skype and Microsoft Teams audio/video calls and conferences. It allows real-time bots to participate in both 1:1 and group/multiparty calls. You can make two types of bot calls:

- Direct (**application media**) media bot calls: You can build real-time bots using the SmartAgents API and have access to direct media I/O, also known as the [Bots Media Library](https://docs.microsoft.com/en-us/bot-framework/dotnet/bot-builder-dotnet-real-time-media-concepts). This helps you build rich real-time media calling bots. You can host the smart agents library and media processor.
- Remote media (**service media**) bot calls: You can manage the workflow but offload media hosting to MediaPaaS/IVR.

## SDK
The **service media** bot can use the calling APIs directly. In this case, the bot is usually _Stateless_ and does not process media locally.

The [Micorosft Graph calling SDK](https://graphcallingsdk-docs.azurewebsites.net/index.html) simplifies the creation of bots. The SDK provides functionality to manage the states of the resources in memory and to pull in bot developers' media stack. The Media Extension allows you to host the media locally and gain access to the low-level audio-video sockets.

# Bot service

Register your bot in the [Bot service](https://docs.microsoft.com/en-us/bot-framework/bot-service-quickstart) in the Azure portal and save the Microsoft AppId and Password as entered in it.

Add the Skype channel and the settings required for that. Select `Local Media - Real Time Media` for the media type in the settings. You can also provide a webhook where we can contact you for the incoming Call notifications.

## Registration and provisioning

For provisioning, please contact [Graph Platform Champs](mailto:sbsplatchamps@microsoft.com) with your business reason, bot application ID, and the list of `tenant ids` that your bot would be accessing. This is a temporary workflow before the [Application Roles](https://docs.microsoft.com/en-us/azure/architecture/multitenant-identity/app-roles) in Azure is ready.

## Calls
[Application](./Application.md) is used for creating a new call by posting to the calls collection. [Call](./Call.md) provides APIs to manage a call.

## Testing

You can test bots locally using tunneling services like [Ngrok](https://ngrok.com) and completing some setup steps. To learn more, see [testing](../../../concepts/testing.md).

<!-- LG: This link is internal only. 
## Samples

Samples are hosted in [VSTS](https://sampleapps-microsoftteams.visualstudio.com/_git/CVIBot) and you can get started by reading the [README](https://sampleapps-microsoftteams.visualstudio.com/_git/CVIBot?path=%2FLocalMediaSampleBot%2FREADME.md&version=GBmaster) file. -->

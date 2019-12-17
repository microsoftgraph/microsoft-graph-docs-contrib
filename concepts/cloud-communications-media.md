---
title: "Understand media"
description: "Enable your bots to send and receive audio and video related content"
author: "ananmishr"
localization_priority: Normal
ms.prod: "cloud-communications"
---

# Understand media

Enable your bots to send and receive audio and video related content. Making use of media allows you to create a more interactive experience between your bots and users.

Based on your needs, discover which media hosting option is right for you.

## Service-Hosted media (remote hosting)
If you want your bot to play a custom prompt when a customer dials your business's number, detect phone tones, record short voice clips, or perform any of the various Interactive Voice Response ([IVR](/graph/api/resources/calls-api-ivr-overview)) scenarios, consider using our [service hosted media APIs](/graph/api/resources/communications-api-overview).

**If your media needs are simpler, explore this option first**. Since the heavy media processing is offloaded remotely, this is a lighter weight solution that allows you to build your bot in a more flexible way.

View an [example](https://github.com/microsoftgraph/microsoft-graph-comms-samples/tree/master/Samples/BetaSamples/RemoteMediaSamples) of how to create a bot that uses service-hosted media.

![Remote Hosting Diagram](images/communications-remote-media.PNG)<br/></br>

## Application-Hosted media (local hosting)
If you want your bot to access a live stream of your customers' audio and video that could be used for recording, transcribing, translating, or sentiment analysis through a natural language processing service, consider hosting your media locally.

>**Note:** You may NOT record or otherwise persist media content from calls or meetings that your application accesses, or data derived from that media content. Make sure you are compliant with the laws and regulations of your area regarding data protection and confidentiality of communications. Please see the [Terms of Use](https://docs.microsoft.com/en-us/legal/microsoft-apis/terms-of-use) and consult with your legal counsel for more information.

**If you'd like more control over your media, choose this option**. You'll have direct access to media streams and will be able to make use of video based screen sharing. You'll be able to build more sophisticated IVR scenarios that are speech enabled. This is a heavier weight solution that gives you the most flexibility to how you want to "program" your media.

Please view the [requirements and considerations](https://docs.microsoft.com/en-us/microsoftteams/platform/concepts/calls-and-meetings/requirements-considerations-application-hosted-media-bots)  for application-hosted media bots.

View an [example](https://github.com/microsoftgraph/microsoft-graph-comms-samples/tree/master/Samples/V1.0Samples/LocalMediaSamples) of how to create a bot that uses application-hosted media.

![Local Hosting Diagram](images/communications-local-media.PNG)<br/></br>

### Permissions
Please view the [permissions for calls](/graph/permissions-reference#calls-permissions) for calling and media related permissions.

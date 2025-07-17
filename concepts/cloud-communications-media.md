---
title: "Choose a media hosting option by using the cloud communications API"
description: "Use the cloud communications API in Microsoft Graph to choose a media hosting option that enables your bots to send and receive audio- and video-related content."
author: "ananmishr"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
ms.date: 11/07/2024
---

# Choose a media hosting option

Use the cloud communications API in Microsoft Graph to enable your bots to send and receive audio- and video-related content. By making use of media, you can create a more interactive experience between your bots and users.

This article helps you determine which media hosting option is right for you based on your needs: service-hosted media or application-hosted media.

## Service-hosted media (remote hosting)

If you want your bot to play a custom prompt when a customer dials your business's number, or to detect phone tones, record short voice clips, or perform any of the various Interactive Voice Response ([IVR](/graph/api/resources/communications-api-overview)) scenarios, consider using the [service-hosted media APIs](/graph/api/resources/communications-api-overview).

**If your media needs are simpler, explore this option first**. Because the heavy media processing is offloaded remotely, this is a lighter weight solution that allows you to build your bot in a more flexible way.

For an example that shows you how to create a bot that uses service-hosted media, see the [Remote media calling bot samples](https://github.com/microsoftgraph/microsoft-graph-comms-samples/tree/master/Samples/V1.0Samples/RemoteMediaSamples).

![Remote hosting diagram](images/communications-remote-media.PNG)

## Application-hosted media (local hosting)

If you want your bot to access a live stream of your customers' audio and video to use for recording, transcribing, translating, or sentiment analysis through a natural language processing service, consider hosting your media locally.

> [!IMPORTANT]
> You **cannot** use the Media Access API to record or otherwise persist media content from calls or meetings that your application accesses, or data derived from that media content ("record" or "recording"), without first calling the [updateRecordingStatus API](/graph/api/call-updaterecordingstatus) to indicate that recording has begun, and receiving a success reply from that API.
>
> If your application begins recording any meeting/call, it must end the recording prior to calling the updateRecordingStatus API to indicate that the recording has ended. Make sure you are compliant with the laws and regulations of your area regarding data protection and confidentiality of communications. See the [Terms of Use](/legal/microsoft-apis/terms-of-use) and consult with your legal counsel for more information.

**If you'd like more control over your media, choose this option**. You'll have direct access to media streams and will be able to make use of video-based screen sharing. You'll be able to build more sophisticated IVR scenarios that are speech enabled. This is a heavier weight solution that gives you the most flexibility in how you want to program your media.

Related content the [requirements and considerations](/microsoftteams/platform/concepts/calls-and-meetings/requirements-considerations-application-hosted-media-bots) for application-hosted media bots.

For an example that shows you how to create a bot that uses application-hosted media, see the [local media samples](https://github.com/microsoftgraph/microsoft-graph-comms-samples/tree/master/Samples/V1.0Samples/LocalMediaSamples).

![Local hosting diagram](images/communications-local-media.PNG)

## Related content

- [Calls permissions](./permissions-reference.md)
- [Teams API overview](teams-concept-overview.md)
---
title: "Create or join online meetings using the cloud communications API"
description: "Use the cloud communications API in Microsoft Graph to create or join online meetings. Create a meeting that takes place in the future or instantaneously."
author: "ananmishr"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
ms.date: 11/07/2024
---

# Create or join online meetings

Use the cloud communications API in Microsoft Graph to create or join online meetings. Online meetings provide the ability to specify certain details, such as the subject of the meeting and who all the attendees are. You can also set the date and time for when the meeting starts and ends.

Online meetings provide the flexibility to create a meeting that takes place in the future or instantaneously. The ability to set up a meeting that starts immediately after it's created is ideal for unexpected issues and other incidents that require the immediate attention of the attendees.

> [!NOTE]
> This set of APIs allows the flexibility and richer integration with Microsoft Teams or Skype capabilities; it does not update or create any event in a calendar. For a convenient approach to add an online meeting to an Outlook calendar, use the calendar API. See [Choose an API in Microsoft Graph to create and join online meetings](choose-online-meeting-api.md) for more information.

## Create an online meeting

When you create an online meeting, you receive [coordinates](/graph/api/resources/onlinemeeting) for the meeting. When participants join the meeting using these meeting coordinates, a group call is created.

When all the participants leave the group call, the group call ends. Participants can still rejoin the meeting afterward using the same meeting coordinates, but this will create another group call.

> [!NOTE]
> The created meetings do not appear on calendars.

## Join an online meeting

After an online meeting is created, users can join in two ways:

1. Through the browser, using the **joinWebURL** that was returned as part of the [meeting coordinates](/graph/api/resources/onlinemeeting).

2. Through the [create call API](/graph/api/application-post-calls#example-5-join-scheduled-meeting-with-service-hosted-media), which requires that you provide the [meeting coordinates](/graph/api/resources/onlinemeeting), ([organizermeetinginfo](/graph/api/resources/organizermeetinginfo), and [chatInfo](/graph/api/resources/chatinfo)).

## Related content

- [Online meeting permissions](./permissions-reference.md)
- [Choose an API in Microsoft Graph to create and join online meetings](choose-online-meeting-api.md)
- [Teams API overview](teams-concept-overview.md)

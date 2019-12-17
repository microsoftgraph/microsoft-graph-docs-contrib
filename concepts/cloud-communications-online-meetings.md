---
title: "Understand online meetings"
description: "You'll have the flexibility to create a meeting that takes place in the future, or instantaneously"
author: "ananmishr"
localization_priority: Normal
ms.prod: "cloud-communications"
---

# Understand online meetings

The terms "*meeting*" and "*online meeting*" are used interchangeably.

### Overview
With online meetings, you have the ability to specify certain details, such as the subject of the meeting, and who all of your attendees are. You'll also be able to set the date and time for when the meeting starts and ends.

You'll have the flexibility to create a meeting that takes place in the future, or instantaneously. The ability to set up a meeting that starts immediately after it is created is ideal for unexpected issues and other incidents that require immediate attention from all of the attendees.

>**Note:** The created meetings do NOT appear on calendars.

### Create an online meeting

When you create an online meeting, you'll receive [coordinates](/graph/api/resources/onlinemeeting) for the meeting. When participants join the meeting using these meeting coordinates, a group call is created.

When all of the participants leave the group call, the group call will end. Participants can still rejoin the meeting afterwards using the same meeting coordinates, but this will create another group call.


### Join an online meeting
There's 2 ways to join a meeting once it's been created:

1. Through your browser, using the joinURL that was returned as part of the [meeting coordinates](/graph/api/resources/onlinemeeting).

2. Through the [Create Call API](/graph/api/application-post-calls#example-5-join-scheduled-meeting-with-service-hosted-media), where you'll need to provide the [meeting coordinates](/graph/api/resources/onlinemeeting) ([organizermeetinginfo](/graph/api/resources/organizermeetinginfo) and the [chatInfo](/graph/api/resources/chatinfo)).

### Permissions
View the [online meeting permissions](/graph/permissions-reference#online-meetings-permissions) for more information.
